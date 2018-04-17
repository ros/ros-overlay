# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Common plugins for the Mapviz visualization tool"
HOMEPAGE="https://github.com/swri-robotics/mapviz"
SRC_URI="https://github.com/swri-robotics-gbp/mapviz-release/archive/release/lunar/${PN}/0.2.5-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/actionlib
	ros-lunar/cv_bridge
	ros-lunar/gps_common
	ros-lunar/image_transport
	ros-lunar/mapviz
	ros-lunar/marti_common_msgs
	ros-lunar/marti_nav_msgs
	ros-lunar/marti_visualization_msgs
	ros-lunar/move_base_msgs
	ros-lunar/nav_msgs
	ros-lunar/pluginlib
	ros-lunar/roscpp
	ros-lunar/sensor_msgs
	ros-lunar/std_msgs
	ros-lunar/stereo_msgs
	ros-lunar/swri_image_util
	ros-lunar/swri_math_util
	ros-lunar/swri_route_util
	ros-lunar/swri_transform_util
	ros-lunar/swri_yaml_util
	ros-lunar/tf
	ros-lunar/visualization_msgs
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtopengl:5
	dev-qt/qtwidgets:5
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	dev-qt/qtopengl:5
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
