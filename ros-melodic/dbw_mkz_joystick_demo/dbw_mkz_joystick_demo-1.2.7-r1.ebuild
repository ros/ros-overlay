# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Demonstration of drive-by-wire with joystick"
HOMEPAGE="http://dataspeedinc.com"
SRC_URI="https://github.com/DataspeedInc-release/dbw_mkz_ros-release/archive/release/melodic/${PN}/1.2.7-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/dbw_mkz_can
	ros-melodic/dbw_mkz_msgs
	ros-melodic/joy
	ros-melodic/roscpp
	ros-melodic/roslaunch
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	test? ( ros-melodic/roslaunch )
	test? ( ros-melodic/roslib )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
