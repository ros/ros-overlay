# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Miscellaneous tools for pyROS"
HOMEPAGE="https://github.com/asmodehn/pyros-utils"
SRC_URI="https://github.com/pyros-dev/pyros-utils-release/archive/release/melodic/${PN}/0.1.4-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/rosgraph
	ros-melodic/roslaunch
	ros-melodic/rospy
	ros-melodic/rostest
	test? ( ros-melodic/pyros_test )
	test? ( ros-melodic/rosnode )
	test? ( ros-melodic/rosunit )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/catkin_pip
	ros-melodic/roslint
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
