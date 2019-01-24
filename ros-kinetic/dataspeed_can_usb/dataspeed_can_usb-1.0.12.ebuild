# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Driver to interface with the Dataspeed Inc. USB CAN Tool"
HOMEPAGE="http://dataspeedinc.com"
SRC_URI="https://github.com/DataspeedInc-release/dataspeed_can-release/archive/release/kinetic/${PN}/1.0.12-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/can_msgs
	ros-kinetic/lusb
	ros-kinetic/nodelet
	ros-kinetic/roscpp
	ros-kinetic/roslaunch
	ros-kinetic/std_msgs
	test? ( ros-kinetic/roslaunch )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/roslib
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
