# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package gives transparency between RTM and ROS.\
\
	 rtmros-data-bridge.py"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/rtmros_common-release/archive/release/kinetic/rosnode_rtc/1.4.0-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/openrtm_tools
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/roscpp_tutorials
	ros-kinetic/rospy
	ros-kinetic/rostopic
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

