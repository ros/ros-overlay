# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Common plugins for the Mapviz visualization tool"
HOMEPAGE="https://github.com/swri-robotics/mapviz"
SRC_URI="https://github.com/swri-robotics-gbp/mapviz-release/archive/release/eloquent/${PN}/2.0.0-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-eloquent/ament_index_cpp
	ros-eloquent/cv_bridge
	ros-eloquent/gps_msgs
	ros-eloquent/image_transport
	ros-eloquent/map_msgs
	ros-eloquent/mapviz
	ros-eloquent/marti_common_msgs
	ros-eloquent/marti_nav_msgs
	ros-eloquent/marti_sensor_msgs
	ros-eloquent/marti_visualization_msgs
	ros-eloquent/nav_msgs
	ros-eloquent/pluginlib
	ros-eloquent/rclcpp
	ros-eloquent/rclcpp_action
	ros-eloquent/sensor_msgs
	ros-eloquent/std_msgs
	ros-eloquent/stereo_msgs
	ros-eloquent/swri_image_util
	ros-eloquent/swri_math_util
	ros-eloquent/swri_route_util
	ros-eloquent/swri_transform_util
	ros-eloquent/tf2
	ros-eloquent/visualization_msgs
	dev-qt/qtcore:5
	dev-qt/qtopengl:5
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
	dev-qt/qtopengl:5
	dev-qt/qtcore:5
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
