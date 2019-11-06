# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Ethernet interface to OxTS GPS receivers \(NCOM packet structure\)"
HOMEPAGE="http://wiki.ros.org/oxford_gps_eth"
SRC_URI="https://github.com/DataspeedInc-release/${PN}-release/archive/release/kinetic/${PN}/1.1.1-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/geometry_msgs
	ros-kinetic/gps_common
	ros-kinetic/nav_msgs
	ros-kinetic/roscpp
	ros-kinetic/roslaunch
	ros-kinetic/rospy
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/tf
	test? ( ros-kinetic/roslaunch )
	test? ( ros-kinetic/rostest )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
