# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The ROS package for the RobotX competition running in Gazebo."
HOMEPAGE="http://wiki.ros.org/vrx_gazebo"
SRC_URI="https://github.com/ros-gbp/vrx-release/archive/release/kinetic/${PN}/1.2.6-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/gazebo_dev
	ros-kinetic/gazebo_ros
	ros-kinetic/geographic_msgs
	ros-kinetic/joy
	ros-kinetic/joy_teleop
	ros-kinetic/message_runtime
	ros-kinetic/std_msgs
	ros-kinetic/wamv_gazebo
	ros-kinetic/wave_gazebo
	ros-kinetic/xacro
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	dev-libs/protobuf
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
