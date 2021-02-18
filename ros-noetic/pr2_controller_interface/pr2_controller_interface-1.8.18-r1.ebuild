# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_7,3_8} )

inherit ros-cmake

DESCRIPTION="This package specifies the interface to a realtime controller. A\
   contro[...]"
HOMEPAGE="http://ros.org/wiki/pr2_controller_interface"
SRC_URI="https://github.com/pr2-gbp/pr2_mechanism-release/archive/release/noetic/${PN}/1.8.18-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/controller_interface
	ros-noetic/pr2_mechanism_model
	ros-noetic/roscpp
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
