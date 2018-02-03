# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The tuw_nav_msgs package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tuw-robotics/tuw_msgs-release/archive/release/kinetic/${PN}/0.0.5-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/geometry_msgs
	ros-kinetic/message_runtime
	ros-kinetic/nav_msgs
	ros-kinetic/roscpp
	ros-kinetic/rospy
	ros-kinetic/std_msgs
	ros-kinetic/tf
	ros-kinetic/tuw_geometry_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
