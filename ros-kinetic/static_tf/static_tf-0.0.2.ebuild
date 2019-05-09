# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The static_tf package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/wu-robotics/${PN}_release/archive/release/kinetic/${PN}/0.0.2-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="TODO"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/geometry_msgs
	ros-kinetic/rospy
	ros-kinetic/tf
	ros-kinetic/tf2_ros
	dev-lang/python
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
