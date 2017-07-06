# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'This doesn'"'"'t do everything you need for multimaster, however it does
	provide'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/rocon_multimaster-release/archive/release/kinetic/rocon_multimaster/0.8.1-2.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/rocon_gateway
	ros-kinetic/rocon_gateway_tests
	ros-kinetic/rocon_gateway_utils
	ros-kinetic/rocon_hub
	ros-kinetic/rocon_hub_client
	ros-kinetic/rocon_test
	ros-kinetic/rocon_unreliable_experiments
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

