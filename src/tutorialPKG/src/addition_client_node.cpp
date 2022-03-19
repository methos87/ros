#include <ros/ros.h>
#include <tutorialPKG/AddTwoInts.h>


int main(int argc, char **argv){
    ros::init(argc, argv, "Additon_Service_Client_Node");
    ros::NodeHandle nh;

    ros::ServiceClient client = nh.serviceClient<tutorialPKG::AddTwoInts>("add_two_ints");

    tutorialPKG::AddTwoInts srv;
    srv.request.a = 2;
    srv.request.b = 4;

    if(client.call(srv)){
        ROS_INFO("The sum of your two intager is: %ld", srv.response.sum);
    }
    else{
        ROS_INFO("Failed to call the service");
        return 1;
    }

    return 0;
}