# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The trac_ik_python package contains a python wrapper using SWIG\
  for trac[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/traclabs/trac_ik-release/archive/release/lunar/${PN}/1.4.10-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/rospy
	ros-lunar/tf
	ros-lunar/tf_conversions
	ros-lunar/trac_ik_lib
	dev-lang/swig
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
