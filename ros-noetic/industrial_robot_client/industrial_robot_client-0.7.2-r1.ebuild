# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="industrial robot client contains generic clients for connecting \
	 to i[...]"
HOMEPAGE="http://ros.org/wiki/industrial_robot_client"
SRC_URI="https://github.com/ros-industrial-release/industrial_core-release/archive/release/noetic/${PN}/0.7.2-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/actionlib
	ros-noetic/actionlib_msgs
	ros-noetic/control_msgs
	ros-noetic/industrial_msgs
	ros-noetic/industrial_utils
	ros-noetic/robot_state_publisher
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	ros-noetic/simple_message
	ros-noetic/std_msgs
	ros-noetic/trajectory_msgs
	ros-noetic/urdf
	test? ( ros-noetic/roslaunch )
	test? ( ros-noetic/rosunit )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
