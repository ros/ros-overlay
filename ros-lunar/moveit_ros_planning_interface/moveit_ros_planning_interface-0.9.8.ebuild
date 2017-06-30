# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit ros-cmake
DESCRIPTION="Components of MoveIt that offer simpler interfaces to planning and execution"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/moveit-release/archive/release/lunar/moveit_ros_planning_interface/0.9.8-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
	ros-lunar/actionlib
	ros-lunar/eigen_conversions
	ros-lunar/moveit_ros_manipulation
	ros-lunar/moveit_ros_move_group
	ros-lunar/moveit_ros_planning
	ros-lunar/moveit_ros_warehouse
	ros-lunar/rosconsole
	ros-lunar/roscpp
	ros-lunar/rospy
	ros-lunar/tf
	ros-lunar/tf_conversions
	dev-lang/python
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	dev-cpp/eigen
	dev-python/catkin_pkg
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

