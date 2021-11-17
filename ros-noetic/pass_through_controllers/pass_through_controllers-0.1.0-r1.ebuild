# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Trajectory controllers \(joint-based and Cartesian\) that forward trajector[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/UniversalRobots/Universal_Robots_ROS_passthrough_controllers-release/archive/release/noetic/${PN}/0.1.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/actionlib
	ros-noetic/cartesian_control_msgs
	ros-noetic/cartesian_interface
	ros-noetic/controller_interface
	ros-noetic/controller_manager
	ros-noetic/dynamic_reconfigure
	ros-noetic/geometry_msgs
	ros-noetic/hardware_interface
	ros-noetic/roscpp
	ros-noetic/speed_scaling_interface
	ros-noetic/trajectory_msgs
	test? ( ros-noetic/actionlib )
	test? ( ros-noetic/actionlib_msgs )
	test? ( ros-noetic/cartesian_trajectory_controller )
	test? ( ros-noetic/control_msgs )
	test? ( ros-noetic/controller_manager_msgs )
	test? ( ros-noetic/rostest )
	test? ( ros-noetic/xacro )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
