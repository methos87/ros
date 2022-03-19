#include <ros/ros.h>
#include <tutorialPKG/person_data.h>


void writeMsgToLog(const tutorialPKG::person_data &person_data){
    ROS_INFO("Name: %s", person_data.name.c_str());
    ROS_INFO("Age: %i", person_data.age);
    ROS_INFO("Color: %s", person_data.color.c_str()); 
}


int main(int argc, char **argv){
    ros::init(argc, argv, "Subscriber");
    ros::NodeHandle nh;

    ros::Subscriber topic_sub = nh.subscribe("tutorial", 1000, writeMsgToLog);

    ros::spin();

    return 0;
}