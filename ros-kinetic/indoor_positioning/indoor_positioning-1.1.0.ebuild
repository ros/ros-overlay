# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This is a ROS package for the metraTec Indoor Positioning System.\
	You [...]"
HOMEPAGE="https://github.com/metratec/indoor_positioning"
SRC_URI="https://github.com/metratec/${PN}-release/archive/release/kinetic/${PN}/1.1.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/message_runtime
	ros-kinetic/roscpp
	ros-kinetic/rospy
	ros-kinetic/std_msgs
	dev-python/numpy
	sci-libs/scipy
	dev-python/pyserial
	dev-python/pyyaml
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
