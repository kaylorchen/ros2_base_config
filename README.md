## Install Cyclonedds and Configure ROS2
```bash
sudo ./install_cyclonedds_and_ros2_config.sh
```
> 1. The "**NetworkInterface**" parameter in the /etc/ros/dds/cyclonedds.xml may be replaced with your real **Port**
> 2. "**ROS_DOMAIN_ID**" parameter is 101 by default, you can modify it in /etc/ros/dds/service-environment.conf

Also， you can add some env var to your terminal for testing:
```bash
source /opt/ros/humble/setup.zsh
#source /usr/share/gazebo/setup.sh
eval "$(register-python-argcomplete3 colcon)"
eval "$(register-python-argcomplete3 ros2)"
export RMW_IMPLEMENTATION=rmw_cyclonedds_cpp
export CYCLONEDDS_URI=file:///etc/ros/dds/cyclonedds.xml
export ROS_DOMAIN_ID=101
export EMAIL=kaylor.chen@qq.com
```

## Install Debian Compilation Environment
```bash
sudo ./install_ros2_compilation_tools.sh
```
Now, your can use **build_ros2_deb** to create a debian software package in your ros2 package repository.