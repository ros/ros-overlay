# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="actionlib_lisp is a native implementation of the famous actionlib\
   in Co[...]"
HOMEPAGE="http://wiki.ros.org/actionlib_lisp"
SRC_URI="https://github.com/ros-gbp/roslisp_common-release/archive/release/melodic/${PN}/0.2.13-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/actionlib_msgs
	ros-melodic/cl_utils
	ros-melodic/message_runtime
	ros-melodic/roslisp
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
