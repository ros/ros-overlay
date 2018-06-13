# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="ROS wrapper for the mobile robot control platform YP-Spur"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/openspur/${PN}-release/archive/release/lunar/${PN}/0.2.0-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/geometry_msgs
	ros-lunar/nav_msgs
	ros-lunar/roscpp
	ros-lunar/rospy
	ros-lunar/sensor_msgs
	ros-lunar/std_msgs
	ros-lunar/tf
	ros-lunar/trajectory_msgs
	ros-lunar/ypspur
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/roslint
	ros-lunar/rostest
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
