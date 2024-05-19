# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="A fork of hector_gazebo_plugins to provide the ros_force_based_move plugin."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/clearpath-gbp/ridgeback_simulator-release/archive/release/noetic/${PN}/0.2.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/gazebo_ros
	ros-noetic/geometry_msgs
	ros-noetic/message_runtime
	ros-noetic/nav_msgs
	ros-noetic/roscpp
	ros-noetic/std_msgs
	ros-noetic/tf
	sci-electronics/gazebo
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/std_srvs
	=sci-electronics/gazebo-11*
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
