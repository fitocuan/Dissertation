#include "ros/ros.h"
#include "std_msgs/String.h"

#include <sstream>
#include <vector>
#include <stdlib.h>
#include <opencv2/opencv.hpp>
#include <iostream>
#include <fstream>
#include <cstdlib>
#include <string>
#include <math.h>
#include <pcl_ros/point_cloud.h>


#include <sensor_msgs/PointCloud2.h>
#include <sensor_msgs/PointCloud.h>
#include <sensor_msgs/point_cloud_conversion.h>



#include <custom_msgs/Crop.h>
#include <custom_msgs/CropList.h>


#include <pcl/filters/extract_indices.h>
#include <pcl/ModelCoefficients.h>
#include <pcl/io/pcd_io.h>
#include <pcl/point_types.h>
#include <pcl/PointIndices.h>
#include <pcl/kdtree/kdtree_flann.h>
#include <pcl/surface/mls.h>


using namespace cv;
using namespace std;
using namespace pcl;



class pcp{

public:

  pcp(){
    ros::NodeHandle n;

    pc_sub = n.subscribe("/zedm/zed_node/point_cloud/cloud_registered", 10, &pcp::pc_Callback, this);
    list_sub = n.subscribe("crop_list", 10, &pcp::list_Callback, this);

    pub = n.advertise<sensor_msgs::PointCloud2>("output", 1);


    vector<PointCloud<PointXYZRGB>::Ptr> cloud_vec;

    int count = 0;


  }


  void list_Callback(const custom_msgs::CropList list_msg){
    crop_list = list_msg;
  }

  void pc_Callback(const sensor_msgs::PointCloud2 cloud_msg){
    cout<<"rec pc"<<endl;

    PointCloud<PointXYZRGB>::Ptr temp_cloud(new PointCloud<PointXYZRGB>);
    PointCloud<PointXYZRGB>::Ptr sum_cloud(new PointCloud<PointXYZRGB>);
    PointCloud<PointXYZRGB>::Ptr crop_cloud(new PointCloud<PointXYZRGB>);
    PointCloud<PointXYZRGB>::Ptr output_cloud(new PointCloud<PointXYZRGB>);
    pcl::PointIndices::Ptr inliers (new pcl::PointIndices);

    fromROSMsg(cloud_msg, *temp_cloud);

      std::vector<int> k_indices;
      std::vector<float> k_distances;

      pcl::KdTreeFLANN<PointXYZRGB>::Ptr tree (new pcl::KdTreeFLANN<PointXYZRGB>);
      ExtractIndices<PointXYZRGB> extract;
      tree->setInputCloud (temp_cloud);

      int p = 0;


      for(int i = 0; i < crop_list.size; i++){

        cout<<crop_list.data[i].coor.x<<" "<<crop_list.data[i].coor.y<<" ";
        p = crop_list.data[i].coor.y*cloud_msg.width + crop_list.data[i].coor.x;

        cout<<p<<" ";
        cout<<temp_cloud->points[p]<<endl;


        if(pcl::isFinite(temp_cloud->points[p]) && tree->radiusSearch (p, 0.05, k_indices, k_distances) > 0){

          inliers->indices = k_indices;

          extract.setInputCloud (temp_cloud);
          extract.setIndices (inliers);
          extract.filter (*crop_cloud);
          *output_cloud += *crop_cloud;
        }
        
      }

      sensor_msgs::PointCloud2 output;
      toROSMsg(*output_cloud,output);
      output.header = cloud_msg.header;
      pub.publish(output);

      cout<<"publish"<<endl;

    

  }
    



protected:
  ros::Subscriber pc_sub;
  ros::Subscriber list_sub;
  ros::Publisher pub;

  custom_msgs::CropList crop_list;

  vector<PointCloud<PointXYZRGB>::Ptr> cloud_vec;

  int count = 0;
  

};



int main(int argc, char **argv)
{

  ros::init(argc, argv, "ZED_pointcloud_node");
  pcp v;

  ros::Rate loop_rate(10);
  ros::spin();

  return 0;
}