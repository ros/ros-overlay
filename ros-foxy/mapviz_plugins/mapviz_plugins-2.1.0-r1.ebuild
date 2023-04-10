# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Common plugins for the Mapviz visualization tool"
HOMEPAGE="https://github.com/swri-robotics/mapviz"
SRC_URI="https://github.com/swri-robotics-gbp/mapviz-release/archive/release/foxy/${PN}/2.1.0-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/ament_index_cpp
	ros-foxy/cv_bridge
	ros-foxy/gps_msgs
	ros-foxy/image_transport
	ros-foxy/map_msgs
	ros-foxy/mapviz
	ros-foxy/marti_common_msgs
	ros-foxy/marti_nav_msgs
	ros-foxy/marti_sensor_msgs
	ros-foxy/marti_visualization_msgs
	ros-foxy/nav_msgs
	ros-foxy/pluginlib
	ros-foxy/rclcpp
	ros-foxy/rclcpp_action
	ros-foxy/sensor_msgs
	ros-foxy/std_msgs
	ros-foxy/stereo_msgs
	ros-foxy/swri_image_util
	ros-foxy/swri_math_util
	ros-foxy/swri_route_util
	ros-foxy/swri_transform_util
	ros-foxy/tf2
	ros-foxy/visualization_msgs
	dev-qt/qtcore:5
	dev-qt/qtopengl:5
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	dev-qt/qtopengl:5
	dev-qt/qtcore:5
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
