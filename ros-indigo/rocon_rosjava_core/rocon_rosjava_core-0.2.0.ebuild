# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Rocon related libraries in rosjava.'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/rocon_rosjava_core-release/archive/release/indigo/rocon_rosjava_core/0.2.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/rocon_interaction_msgs
	ros-indigo/rocon_std_msgs
	ros-indigo/rosjava_bootstrap
	ros-indigo/rosjava_build_tools
	ros-indigo/rosjava_core
	ros-indigo/rosjava_messages
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

