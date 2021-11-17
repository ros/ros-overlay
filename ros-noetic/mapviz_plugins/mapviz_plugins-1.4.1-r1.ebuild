# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Common plugins for the Mapviz visualization tool"
HOMEPAGE="https://github.com/swri-robotics/mapviz"
SRC_URI="https://github.com/swri-robotics-gbp/mapviz-release/archive/release/noetic/${PN}/1.4.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/actionlib
	ros-noetic/cv_bridge
	ros-noetic/gps_common
	ros-noetic/image_transport
	ros-noetic/map_msgs
	ros-noetic/mapviz
	ros-noetic/marti_common_msgs
	ros-noetic/marti_nav_msgs
	ros-noetic/marti_sensor_msgs
	ros-noetic/marti_visualization_msgs
	ros-noetic/move_base_msgs
	ros-noetic/nav_msgs
	ros-noetic/pluginlib
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/stereo_msgs
	ros-noetic/swri_image_util
	ros-noetic/swri_math_util
	ros-noetic/swri_route_util
	ros-noetic/swri_transform_util
	ros-noetic/swri_yaml_util
	ros-noetic/tf
	ros-noetic/visualization_msgs
	dev-qt/qtcore:5
	dev-qt/qtopengl:5
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	dev-qt/qtopengl:5
	dev-qt/qtcore:5
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
