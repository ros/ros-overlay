# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The trac_ik_python package contains a python wrapper using SWIG\
  for trac[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/traclabs/trac_ik-release/archive/release/indigo/${PN}/1.4.9-2.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/rospy
	ros-indigo/tf
	ros-indigo/tf_conversions
	ros-indigo/trac_ik_lib
	dev-lang/swig
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
