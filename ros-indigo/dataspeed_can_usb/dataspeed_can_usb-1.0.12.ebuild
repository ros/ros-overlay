# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Driver to interface with the Dataspeed Inc. USB CAN Tool"
HOMEPAGE="http://dataspeedinc.com"
SRC_URI="https://github.com/DataspeedInc-release/dataspeed_can-release/archive/release/indigo/${PN}/1.0.12-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-indigo/can_msgs
	ros-indigo/lusb
	ros-indigo/nodelet
	ros-indigo/roscpp
	ros-indigo/roslaunch
	ros-indigo/std_msgs
	test? ( ros-indigo/roslaunch )
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/roslib
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
