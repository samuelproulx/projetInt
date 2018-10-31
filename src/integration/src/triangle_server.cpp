#include "ros/ros.h"
#include "integration/triangle.h"
#include "geometry_msgs/Point.h"
#include "std_msgs/String.h"
#include <cstdlib>

bool calculAire(integration::triangle::Request &req,
                integration::triangle::Response &res)
{


geometry_msgs::Point p1p2;
geometry_msgs::Point p1p3;

p1p2.x = req.p2.x - req.p1.x;
p1p2.y = req.p2.y - req.p1.y;
p1p2.z = req.p2.z - req.p1.z;

p1p3.x = req.p3.y - req.p1.y;
p1p3.z = req.p3.z - req.p1.z;

res.aire = (double)((1.0/2.0) *(sqrt(pow((p1p2.y * p1p3.z) - (p1p2.z * p1p3.y),2)
                    + pow((p1p2.z * p1p3.x) - (p1p2.x * p1p3.z),2)
                    + pow((p1p2.x * p1p3.y) - (p1p2.y * p1p3.x),2))));


return true;

}

int main(int argc, char **argv){

ros::init(argc,argv,"triangle_server");

ros:: NodeHandle n;

ros::ServiceServer service = n.advertiseService("triangle",calculAire);
ROS_INFO("En attente de 3 points pour calcul de l'aire");

ros::spin();


}