# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="ROS support for the Pilz laser scanner"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/PilzDE/${PN}-release/archive/release/noetic/${PN}/0.3.3-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/geometry_msgs
	ros-noetic/message_runtime
	ros-noetic/robot_state_publisher
	ros-noetic/rosconsole_bridge
	ros-noetic/roscpp
	ros-noetic/roslaunch
	ros-noetic/rviz
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/visualization_msgs
	ros-noetic/xacro
	test? ( ros-noetic/code_coverage )
	test? ( ros-noetic/rosbag )
	test? ( ros-noetic/roslaunch )
	test? ( ros-noetic/rostest )
	test? ( ros-noetic/rosunit )
	dev-libs/libfmt
	dev-libs/tinyxml2
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/cmake_modules
	ros-noetic/message_generation
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
