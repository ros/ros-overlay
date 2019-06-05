# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Grasp generation for Care-O-bot based on OpenRAVE"
HOMEPAGE="http://ros.org/wiki/cob_manipulation/"
SRC_URI="https://github.com/ipa320/cob_manipulation-release/archive/release/kinetic/${PN}/0.7.2-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/actionlib
	ros-kinetic/actionlib_msgs
	ros-kinetic/cob_description
	ros-kinetic/geometry_msgs
	ros-kinetic/message_runtime
	ros-kinetic/moveit_msgs
	ros-kinetic/robot_state_publisher
	ros-kinetic/roslib
	ros-kinetic/rospy
	ros-kinetic/rviz
	ros-kinetic/schunk_description
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/tf
	ros-kinetic/tf2_ros
	ros-kinetic/trajectory_msgs
	ros-kinetic/visualization_msgs
	ros-kinetic/xacro
	sci-libs/scipy
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
