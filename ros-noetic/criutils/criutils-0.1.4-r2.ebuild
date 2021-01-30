# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The criutils package"
HOMEPAGE="http://wiki.ros.org/criutils"
SRC_URI="https://github.com/crigroup/${PN}-release/archive/release/noetic/${PN}/0.1.4-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/baldor
	ros-noetic/cv_bridge
	ros-noetic/geometry_msgs
	ros-noetic/image_geometry
	ros-noetic/resource_retriever
	ros-noetic/rostopic
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/visualization_msgs
	dev-python/numpy
	dev-python/termcolor
	dev-python/numpy
	dev-python/termcolor
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
