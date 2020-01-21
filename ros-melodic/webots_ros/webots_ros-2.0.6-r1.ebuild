# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The ROS package containing examples for interfacing ROS with the standard R[...]"
HOMEPAGE="http://wiki.ros.org/webots_ros"
SRC_URI="https://github.com/cyberbotics/${PN}-release/archive/release/melodic/${PN}/2.0.6-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/message_runtime
	ros-melodic/roscpp
	ros-melodic/rospy
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/tf
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
