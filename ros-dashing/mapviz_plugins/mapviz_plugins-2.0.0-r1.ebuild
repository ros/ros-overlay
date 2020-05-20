# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Common plugins for the Mapviz visualization tool"
HOMEPAGE="https://github.com/swri-robotics/mapviz"
SRC_URI="https://github.com/swri-robotics-gbp/mapviz-release/archive/release/dashing/${PN}/2.0.0-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-dashing/ament_index_cpp
	ros-dashing/cv_bridge
	ros-dashing/gps_msgs
	ros-dashing/image_transport
	ros-dashing/map_msgs
	ros-dashing/mapviz
	ros-dashing/marti_common_msgs
	ros-dashing/marti_nav_msgs
	ros-dashing/marti_sensor_msgs
	ros-dashing/marti_visualization_msgs
	ros-dashing/nav_msgs
	ros-dashing/pluginlib
	ros-dashing/rclcpp
	ros-dashing/rclcpp_action
	ros-dashing/sensor_msgs
	ros-dashing/std_msgs
	ros-dashing/stereo_msgs
	ros-dashing/swri_image_util
	ros-dashing/swri_math_util
	ros-dashing/swri_route_util
	ros-dashing/swri_transform_util
	ros-dashing/tf2
	ros-dashing/visualization_msgs
	dev-qt/qtcore:5
	dev-qt/qtopengl:5
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
	dev-qt/qtopengl:5
	dev-qt/qtcore:5
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
