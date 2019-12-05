# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The ROS packages in this repository were created to provide an improved\
  [...]"
HOMEPAGE="http://wiki.ros.org/trac_ik"
SRC_URI="https://github.com/traclabs/${PN}-release/archive/release/melodic/${PN}/1.5.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/trac_ik_examples
	ros-melodic/trac_ik_kinematics_plugin
	ros-melodic/trac_ik_lib
	ros-melodic/trac_ik_python
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
