# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Launch files and other resources for simulating Leo Rover in Gazebo."
HOMEPAGE="http://wiki.ros.org/leo_gazebo"
SRC_URI="https://github.com/fictionlab-gbp/leo_simulator-release/archive/release/noetic/${PN}/0.2.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/compressed_image_transport
	ros-noetic/diff_drive_controller
	ros-noetic/gazebo_dev
	ros-noetic/gazebo_plugins
	ros-noetic/gazebo_ros
	ros-noetic/gazebo_ros_control
	ros-noetic/geometry_msgs
	ros-noetic/joint_state_controller
	ros-noetic/leo_description
	ros-noetic/nav_msgs
	ros-noetic/roscpp
	ros-noetic/topic_tools
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
