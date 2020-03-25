#!/usr/bin/env python
import rospy
from std_msgs.msg import String
from sensor_msgs.msg import Image
from sensor_msgs.msg import PointCloud2
from cv_bridge import CvBridge, CvBridgeError


import cv2


class Image_Information_Node:
    def __init__(self):
        self.bridge = CvBridge()

        rospy.Subscriber("/zedm/zed_node/left_raw/image_raw_color", Image, self.callback_zed_img)

        self.detector_pub = rospy.Publisher('/seg_image', Image, queue_size=10)
        
        
    def callback_zed_img(self,img):
        """ ZED rect_image callback"""

        #Converting RGB to HSV
        image = self.bridge.imgmsg_to_cv2(img)
        hsv_image = cv2.cvtColor(image, cv2.COLOR_RGB2HSV)

        #Creating Color Mask
        light_red = np.array([100, 25, 100])
        dark_red = np.array([180, 255, 255])

        mask = cv2.inRange(hsv_image, light_red, dark_red)
        img_seg = cv2.bitwise_and(image, image, mask=mask)

        #Showing Images
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