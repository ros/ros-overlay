# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Demonstration of drive-by-wire with joystick"
HOMEPAGE="http://dataspeedinc.com"
SRC_URI="https://github.com/DataspeedInc-release/dbw_fca_ros-release/archive/release/noetic/${PN}/1.0.10-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/dbw_fca_can
	ros-noetic/dbw_fca_msgs
	ros-noetic/joy
	ros-noetic/roscpp
	ros-noetic/roslaunch
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	test? ( ros-noetic/roslaunch )
	test? ( ros-noetic/roslib )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
