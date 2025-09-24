#!/usr/bin/env bash
sudo apt update
sudo apt install -y wget curl rsync
sudo rsync -avz usr/ /usr
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://mirrors.huaweicloud.com/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/kaylor-keyring.gpg] http://apt.kaylordut.cn/kaylordut/ kaylordut main" | sudo tee /etc/apt/sources.list.d/kaylordut.list > /dev/null
sudo apt update
sudo apt install -y ros-humble-ros-base ros-humble-rmw-cyclonedds-cpp python3-colcon-argcomplete python3-argcomplete python3-rosdep
sudo mkdir -pv /etc/ros/dds/
sudo chown -R 1000:1000 /etc/ros/dds/
sudo rsync -avz etc/ros/ /etc/ros/