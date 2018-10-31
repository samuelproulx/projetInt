#include "ros/ros.h"
#include "integration/triangle.h"
#include "geometry_msgs/Point.h"
#include "std_msgs/String.h"
#include <cstdlib>

/*

Fichier pour le premier noeud. Agit comme un client du service triangle.srv et publliera
la response sur un topic

*/

int main(int argc, char **argv){

ros::init(argc,argv,"triangle_client");

ros:: NodeHandle n;
geometry_msgs:: Point p1;
geometry_msgs:: Point p2;
geometry_msgs:: Point p3;

p1.x = 1;
p1.y = 1;
p1.z = 1;

p2.x = 2;
p2.y= 2;
p2.z = 2;

p3.x = 3;
p3.y = 3;
p3.z = 3;

// Creation du client pour le service triangle.srv 
ros::ServiceClient client = n.serviceClient<integration::triangle>("triangle");

// Creation du publisher

ros::Publisher triangle_pub = n.advertise<std_msgs:: String>("triangle_pub",1000);
ros::Rate loop_rate(10);

integration::triangle srv;
srv.request.p1 = p1;
srv.request.p2 = p2;
srv.request.p3 = p3;

while(ros::ok){
    if(client.call(srv)){

        std_msgs::String msg;

        std::stringstream ss;

        ss << " L'aire du triangle est " << srv.response.aire << " u2" ;
        msg.data = ss.str();
        ROS_INFO("%s",msg.data.c_str());
        triangle_pub.publish(msg);
    }
    else{
        ROS_ERROR("L'appel au serveur a echouer");
    
    }
    
    ros::spinOnce();
    loop_rate.sleep();
}
return 0;

}
