# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The criutils package"
HOMEPAGE="http://wiki.ros.org/criutils"
SRC_URI="https://github.com/crigroup/${PN}-release/archive/release/kinetic/${PN}/0.1.3-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/baldor
	ros-kinetic/cv_bridge
	ros-kinetic/geometry_msgs
	ros-kinetic/image_geometry
	ros-kinetic/resource_retriever
	ros-kinetic/rostopic
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/visualization_msgs
	dev-python/numpy
	dev-python/termcolor
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
