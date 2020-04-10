# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="cob_lookat_action"
HOMEPAGE="http://ros.org/wiki/cob_manipulation/"
SRC_URI="https://github.com/ipa320/cob_manipulation-release/archive/release/melodic/${PN}/0.7.4-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/actionlib
	ros-melodic/actionlib_msgs
	ros-melodic/angles
	ros-melodic/control_msgs
	ros-melodic/geometry_msgs
	ros-melodic/kdl_conversions
	ros-melodic/kdl_parser
	ros-melodic/message_runtime
	ros-melodic/move_base_msgs
	ros-melodic/orocos_kdl
	ros-melodic/roscpp
	ros-melodic/rospy
	ros-melodic/sensor_msgs
	ros-melodic/tf
	ros-melodic/tf2_ros
	ros-melodic/tf_conversions
	ros-melodic/trajectory_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
