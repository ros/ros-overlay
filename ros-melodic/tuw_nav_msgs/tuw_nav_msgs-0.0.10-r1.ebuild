# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The tuw_nav_msgs package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tuw-robotics/tuw_msgs-release/archive/release/melodic/${PN}/0.0.10-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/geometry_msgs
	ros-melodic/message_runtime
	ros-melodic/nav_msgs
	ros-melodic/roscpp
	ros-melodic/rospy
	ros-melodic/std_msgs
	ros-melodic/tf
	ros-melodic/tuw_geometry_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
