# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The leo_gazebo package"
HOMEPAGE="http://wiki.ros.org/leo_gazebo"
SRC_URI="https://github.com/fictionlab-gbp/leo_simulator-release/archive/release/noetic/${PN}/0.1.2-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/compressed_image_transport
	ros-noetic/diff_drive_controller
	ros-noetic/gazebo_plugins
	ros-noetic/gazebo_ros
	ros-noetic/gazebo_ros_control
	ros-noetic/geometry_msgs
	ros-noetic/joint_state_controller
	ros-noetic/leo_description
	ros-noetic/nav_msgs
	ros-noetic/roscpp
	ros-noetic/topic_tools
	sci-electronics/gazebo
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
