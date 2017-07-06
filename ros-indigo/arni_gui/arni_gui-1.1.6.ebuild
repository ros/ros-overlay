# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Common functionality for the ARNI rqt_gui overview and detail plugins.'"
HOMEPAGE="http://wiki.ros.org/arni"
SRC_URI="https://github.com/ROS-PSE/arni-release/archive/release/indigo/arni_gui/1.1.6-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/arni_core
	ros-indigo/arni_msgs
	ros-indigo/rosgraph_msgs
	ros-indigo/rospy
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

