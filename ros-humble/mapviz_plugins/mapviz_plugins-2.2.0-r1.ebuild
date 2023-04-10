# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="Common plugins for the Mapviz visualization tool"
HOMEPAGE="https://github.com/swri-robotics/mapviz"
SRC_URI="https://github.com/ros2-gbp/mapviz-release/archive/release/humble/${PN}/2.2.0-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/ament_index_cpp
	ros-humble/cv_bridge
	ros-humble/gps_msgs
	ros-humble/image_transport
	ros-humble/map_msgs
	ros-humble/mapviz
	ros-humble/marti_common_msgs
	ros-humble/marti_nav_msgs
	ros-humble/marti_sensor_msgs
	ros-humble/marti_visualization_msgs
	ros-humble/nav_msgs
	ros-humble/pluginlib
	ros-humble/rclcpp
	ros-humble/rclcpp_action
	ros-humble/sensor_msgs
	ros-humble/std_msgs
	ros-humble/stereo_msgs
	ros-humble/swri_image_util
	ros-humble/swri_math_util
	ros-humble/swri_route_util
	ros-humble/swri_transform_util
	ros-humble/tf2
	ros-humble/visualization_msgs
	dev-qt/qtcore:5
	dev-qt/qtopengl:5
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	dev-qt/qtopengl:5
	dev-qt/qtcore:5
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
