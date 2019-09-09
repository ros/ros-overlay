# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The indoor_localization package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/inomuh/${PN}-release/archive/release/kinetic/${PN}/1.0.0-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/geometry_msgs
	ros-kinetic/message_generation
	ros-kinetic/message_runtime
	ros-kinetic/roscpp
	ros-kinetic/rospy
	ros-kinetic/rostest
	ros-kinetic/std_msgs
	test? ( ros-kinetic/rosunit )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/roslint
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
