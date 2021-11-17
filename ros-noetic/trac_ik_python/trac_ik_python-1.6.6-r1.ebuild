# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The trac_ik_python package contains a python wrapper using SWIG\
  for trac[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/traclabs/trac_ik-release/archive/release/noetic/${PN}/1.6.6-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/rospy
	ros-noetic/tf
	ros-noetic/tf_conversions
	ros-noetic/trac_ik_lib
	sci-libs/nlopt
	sci-libs/nlopt
	dev-lang/swig
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	sci-libs/nlopt
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
