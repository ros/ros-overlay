# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package specifies the interface to a realtime controller. A\
   contro[...]"
HOMEPAGE="http://ros.org/wiki/pr2_controller_interface"
SRC_URI="https://github.com/pr2-gbp/pr2_mechanism-release/archive/release/lunar/${PN}/1.8.18-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/controller_interface
	ros-lunar/pr2_mechanism_model
	ros-lunar/roscpp
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
