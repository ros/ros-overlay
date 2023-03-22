# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Graphical tools to interact with ROS services."
HOMEPAGE="https://github.com/nobleo/rx_service_tools"
SRC_URI="https://github.com/nobleo/${PN}-release/archive/release/noetic/${PN}/1.0.2-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/roslib
	ros-noetic/rospy
	dev-python/pyyaml
	dev-python/wxpython
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
