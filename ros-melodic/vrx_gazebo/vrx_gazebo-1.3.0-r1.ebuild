# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The ROS package for the RobotX competition running in Gazebo."
HOMEPAGE="http://wiki.ros.org/vrx_gazebo"
SRC_URI="https://github.com/ros-gbp/vrx-release/archive/release/melodic/${PN}/1.3.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/gazebo_dev
	ros-melodic/gazebo_ros
	ros-melodic/geographic_msgs
	ros-melodic/joy
	ros-melodic/joy_teleop
	ros-melodic/message_runtime
	ros-melodic/std_msgs
	ros-melodic/wamv_gazebo
	ros-melodic/wave_gazebo
	ros-melodic/xacro
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	dev-libs/protobuf
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
