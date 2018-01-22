# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The ROS packages in this repository were created to provide an improved\
  [...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/traclabs/${PN}-release/archive/release/indigo/${PN}/1.4.9-2.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/trac_ik_examples
	ros-indigo/trac_ik_kinematics_plugin
	ros-indigo/trac_ik_lib
	ros-indigo/trac_ik_python
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
