#include <ros.h>
#include <std_msgs/Float32.h>
#include <Adafruit_MLX90614.h>

Adafruit_MLX90614 mlx = Adafruit_MLX90614();
std_msgs::Float32 objtemp_msg;
std_msgs::Float32 ambtemp_msg;
ros::Publisher pub_objtemp("object_temperature", &objtemp_msg);
ros::Publisher pub_ambtemp("ambient_temperature", &ambtemp_msg);
ros::NodeHandle nh;


void setup() {
  
  // Initiate ros node
  nh.initNode();
  nh.advertise(pub_objtemp);
  nh.advertise(pub_ambtemp);

  mlx.begin();

  // emissivity of human skin
  mlx.writeEmissivityReg(0xFAE0);
  delay(1000);
}

void loop() {
  while (!nh.connected())
  {
    nh.spinOnce();
  }

  objtemp_msg.data = mlx.readObjectTempC();
  ambtemp_msg.data = mlx.readAmbientTempC();
  pub_objtemp.publish(&objtemp_msg);
  pub_ambtemp.publish(&ambtemp_msg);
  
  delay(500);

  
}
