# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Provides a node that reports how long a subset of joints has been\
	 set[...]"
HOMEPAGE="http://www.ros.org/wiki/joint_states_settler"
SRC_URI="https://github.com/ros-gbp/calibration-release/archive/release/indigo/joint_states_settler/0.10.14-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/actionlib_msgs
	ros-indigo/rosconsole
	ros-indigo/roscpp
	ros-indigo/roscpp_serialization
	ros-indigo/settlerlib
	ros-indigo/std_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
