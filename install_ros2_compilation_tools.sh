#!/usr/bin/env bash
apt update
apt install -y fakeroot debhelper devscripts ros-dev-tools python3-bloom
cp -v build_ros2_deb /usr/local/bin/