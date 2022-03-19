#include <ros/ros.h>
#include <tutorialPKG/person_data.h>

int main(int argc, char **argv){
    ros::init(argc, argv, "Publisher");
    ros::NodeHandle nh;

    ros::Publisher topic_pub = nh.advertise<tutorialPKG::person_data>("tutorial", 1000);
    ros::Rate loop_rate(1);

    while(ros::ok()){
        tutorialPKG::person_data person_data;
        person_data.name = "Akos Novak";
        person_data.age = 34;
        person_data.color = "Blue";

        topic_pub.publish(person_data);
        ros::spinOnce();
        loop_rate.sleep();
    }
    return 0;
}   