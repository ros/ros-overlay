# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Model Attachment Plugin"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/boeing_gazebo_model_attachement_plugin-release/archive/release/noetic/${PN}/1.0.2-5.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/gazebo_msgs
	ros-noetic/gazebo_ros
	ros-noetic/message_generation
	ros-noetic/message_runtime
	ros-noetic/roscpp
	ros-noetic/rospy
	test? ( ros-noetic/rostest )
	sci-electronics/gazebo
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
