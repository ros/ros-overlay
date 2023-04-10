# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="RVIZ plugin for IMU visualization"
HOMEPAGE="http://ros.org/wiki/rviz_imu_plugin"
SRC_URI="https://github.com/ros2-gbp/imu_tools-release/archive/release/foxy/${PN}/2.0.3-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/message_filters
	ros-foxy/pluginlib
	ros-foxy/rclcpp
	ros-foxy/rviz_common
	ros-foxy/rviz_ogre_vendor
	ros-foxy/rviz_rendering
	ros-foxy/sensor_msgs
	ros-foxy/tf2
	ros-foxy/tf2_ros
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtopengl:5
	dev-qt/qtwidgets:5
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
