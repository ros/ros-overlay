# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Improved ROS robot_state_publisher which can update the robot model via dyn[...]"
HOMEPAGE="http://www.ros.org/wiki/dynamic_robot_state_publisher"
SRC_URI="https://github.com/peci1/${PN}-release/archive/release/noetic/${PN}/1.2.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/dynamic_reconfigure
	ros-noetic/kdl_parser
	ros-noetic/robot_state_publisher
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	test? ( ros-noetic/rostest )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
