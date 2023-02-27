# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Common plugins for the Mapviz visualization tool"
HOMEPAGE="https://github.com/swri-robotics/mapviz"
SRC_URI="https://github.com/swri-robotics-gbp/mapviz-release/archive/release/galactic/${PN}/2.2.0-3.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/ament_index_cpp
	ros-galactic/cv_bridge
	ros-galactic/gps_msgs
	ros-galactic/image_transport
	ros-galactic/map_msgs
	ros-galactic/mapviz
	ros-galactic/marti_common_msgs
	ros-galactic/marti_nav_msgs
	ros-galactic/marti_sensor_msgs
	ros-galactic/marti_visualization_msgs
	ros-galactic/nav_msgs
	ros-galactic/pluginlib
	ros-galactic/rclcpp
	ros-galactic/rclcpp_action
	ros-galactic/sensor_msgs
	ros-galactic/std_msgs
	ros-galactic/stereo_msgs
	ros-galactic/swri_image_util
	ros-galactic/swri_math_util
	ros-galactic/swri_route_util
	ros-galactic/swri_transform_util
	ros-galactic/tf2
	ros-galactic/visualization_msgs
	dev-qt/qtcore:5
	dev-qt/qtopengl:5
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	dev-qt/qtopengl:5
	dev-qt/qtcore:5
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
