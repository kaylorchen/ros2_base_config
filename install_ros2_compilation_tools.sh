#!/usr/bin/env bash
apt update
apt install -y fakeroot debhelper devscripts ros-dev-tools python3-bloom
cp -v build_ros2_deb /usr/local/bin/
cp -v build_ros2_deb /usr/local/bin/build_ros2_deb_with_clean
echo "fakeroot debian/rules clean" | tee -a /usr/local/bin/build_ros2_deb_with_clean
