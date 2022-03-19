#include <ros/ros.h>
#include <tutorialPKG/AddTwoInts.h>

bool add(tutorialPKG::AddTwoInts::Request &req, tutorialPKG::AddTwoInts::Response &res){
    res.sum = req.a + req.b;
    return true;
}


int main(int argc, char **argv){
    ros::init(argc, argv, "Service_Node");
    ros::NodeHandle nh;

    ros::ServiceServer service = nh.advertiseService("add_two_ints", add);

    ros::spin();

    return 0;
}