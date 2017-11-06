# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This is a meta package for the official rosjava repositories."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/rosjava-release/rosjava-release/archive/release/indigo/rosjava/0.2.1-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/genjava
	ros-indigo/rocon_rosjava_core
	ros-indigo/rosjava_bootstrap
	ros-indigo/rosjava_build_tools
	ros-indigo/rosjava_core
	ros-indigo/rosjava_extras
	ros-indigo/rosjava_messages
	ros-indigo/rosjava_test_msgs
	ros-indigo/zeroconf_jmdns_suite
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
