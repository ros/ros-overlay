# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Grasp generation for Care-O-bot based on OpenRAVE"
HOMEPAGE="http://ros.org/wiki/cob_manipulation/"
SRC_URI="https://github.com/ipa320/cob_manipulation-release/archive/release/noetic/${PN}/0.7.5-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/actionlib
	ros-noetic/actionlib_msgs
	ros-noetic/cob_description
	ros-noetic/geometry_msgs
	ros-noetic/message_runtime
	ros-noetic/moveit_msgs
	ros-noetic/robot_state_publisher
	ros-noetic/roslib
	ros-noetic/rospy
	ros-noetic/rviz
	ros-noetic/schunk_description
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/tf
	ros-noetic/tf2_ros
	ros-noetic/trajectory_msgs
	ros-noetic/visualization_msgs
	ros-noetic/xacro
	sci-libs/scipy
	dev-python/six
	sci-libs/scipy
	dev-python/six
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_generation
	dev-python/setuptools
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
