#!/usr/bin/env python
import rospy
from std_msgs.msg import String
from std_msgs.msg import Float32MultiArray

from sensor_msgs.msg import Image
from sensor_msgs.msg import PointCloud2
from custom_msgs.msg import Crop
from custom_msgs.msg import CropList



from cv_bridge import CvBridge, CvBridgeError

import numpy as np
import cv2


class Image_Information_Node:
    def __init__(self):
        self.bridge = CvBridge()

        params = cv2.SimpleBlobDetector_Params()
        params.filterByArea = True
        params.minDistBetweenBlobs = 0
        params.minArea = 5000
        params.maxArea = 50000
        params.filterByCircularity = False
        params.filterByColor = False
        params.filterByConvexity = False
        params.filterByInertia = False

        self.blob_detector = cv2.SimpleBlobDetector_create(params)

        rospy.Subscriber("/zedm/zed_node/left_raw/image_raw_color", Image, self.callback_zed_img)
        
        self.detector_pub = rospy.Publisher('/seg_image', Image, queue_size=10)
        self.crop_coor_pub = rospy.Publisher('/crop_list', CropList, queue_size=10)
        


    def callback_zed_img(self,img):
        """ ZED rect_image callback"""

        #Converting RGB to HSV
        image = self.bridge.imgmsg_to_cv2(img)
        hsv_image = cv2.cvtColor(image, cv2.COLOR_RGB2HSV)

        #Creating Color Mask
        light_red = np.array([120, 30, 0])
        dark_red = np.array([180, 255, 200])

        mask = cv2.inRange(hsv_image, light_red, dark_red)
        img_seg = cv2.bitwise_and(image, image, mask=mask)

        keypoints = self.blob_detector.detect(mask)

        print(keypoints)

        crop_list = CropList()

        for kp in keypoints:
            x, y = kp.pt
            crop = Crop()

            crop.coor.x , crop.coor.y = int(x) , int(y)
            crop_list.data.append(crop)

            print(int(x) , int(y))

            cv2.circle(img_seg, (int(x), int(y)), 5, (0, 0, 255),5)

        crop_list.size = len(keypoints)

        self.crop_coor_pub.publish(crop_list)



        cv2.imshow("Image Segment", img_seg)
        #cv2.imshow("Image HSV", hsv_image)
        #cv2.imshow("Image Given", image)
        cv2.waitKey(1)

        print("recevied image")

if __name__ == '__main__':
    try:
        rospy.init_node('image_info_node')
        rate = rospy.Rate(10) # 10Hz
        D = Image_Information_Node()
        rospy.spin()

    except rospy.ROSInterruptException:
        pass