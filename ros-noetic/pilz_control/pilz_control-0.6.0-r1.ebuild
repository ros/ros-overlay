# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="This package provides a specialized joint_trajectory_controller that can be[...]"
HOMEPAGE="http://ros.org/wiki/pilz_control"
SRC_URI="https://github.com/PilzDE/pilz_robots-release/archive/release/noetic/${PN}/0.6.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/controller_interface
	ros-noetic/controller_manager
	ros-noetic/joint_trajectory_controller
	ros-noetic/moveit_core
	ros-noetic/moveit_ros_planning
	ros-noetic/pilz_msgs
	ros-noetic/roscpp
	ros-noetic/std_srvs
	test? ( ros-noetic/code_coverage )
	test? ( ros-noetic/geometry_msgs )
	test? ( ros-noetic/pilz_testutils )
	test? ( ros-noetic/pilz_utils )
	test? ( ros-noetic/rostest )
	test? ( ros-noetic/rosunit )
	test? ( ros-noetic/tf2 )
	test? ( ros-noetic/tf2_geometry_msgs )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/cmake_modules
	ros-noetic/roslint
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
