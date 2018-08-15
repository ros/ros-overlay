# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Demonstration of drive-by-wire with joystick"
HOMEPAGE="http://dataspeedinc.com"
SRC_URI="https://github.com/DataspeedInc-release/dbw_fca_ros-release/archive/release/kinetic/${PN}/0.0.1-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/dbw_fca_can
	ros-kinetic/dbw_fca_msgs
	ros-kinetic/joy
	ros-kinetic/roscpp
	ros-kinetic/roslaunch
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	test? ( ros-kinetic/roslaunch )
	test? ( ros-kinetic/roslib )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
