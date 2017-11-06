# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This doesn\'t do everything you need for multimaster, however it does\
	[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/rocon_multimaster-release/archive/release/indigo/rocon_multimaster/0.7.10-1.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/rocon_gateway
	ros-indigo/rocon_gateway_tests
	ros-indigo/rocon_gateway_utils
	ros-indigo/rocon_hub
	ros-indigo/rocon_hub_client
	ros-indigo/rocon_test
	ros-indigo/rocon_unreliable_experiments
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
