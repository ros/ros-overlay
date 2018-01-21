# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Grasp generation for Care-O-bot based on OpenRAVE"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ipa320/cob_manipulation-release/archive/release/indigo/${PN}/0.6.6-1.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/actionlib_msgs
	ros-indigo/cob_description
	ros-indigo/geometry_msgs
	ros-indigo/message_runtime
	ros-indigo/moveit_msgs
	ros-indigo/robot_state_publisher
	ros-indigo/roslib
	ros-indigo/rospy
	ros-indigo/rviz
	ros-indigo/schunk_description
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
	ros-indigo/tf
	ros-indigo/tf2_ros
	ros-indigo/trajectory_msgs
	ros-indigo/visualization_msgs
	ros-indigo/xacro
	sci-libs/scipy
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
