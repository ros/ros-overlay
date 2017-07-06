# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="multires_image"
HOMEPAGE="https://github.com/swri-robotics/mapviz"
SRC_URI="https://github.com/swri-robotics-gbp/mapviz-release/archive/release/indigo/multires_image/0.0.7-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/gps_common
	ros-indigo/mapviz
	ros-indigo/pluginlib
	ros-indigo/roscpp
	ros-indigo/rospy
	ros-indigo/swri_math_util
	ros-indigo/swri_transform_util
	ros-indigo/swri_yaml_util
	ros-indigo/tf
	media-libs/opencv
	dev-qt/qtcore:4
	dev-qt/qtopengl:4
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	dev-qt/qtcore:4
	dev-qt/qtopengl:4
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

