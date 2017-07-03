# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake
DESCRIPTION="Components of MoveIt used for manipulation"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/moveit-release/archive/release/lunar/moveit_ros_manipulation/0.9.8-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/actionlib
	ros-lunar/dynamic_reconfigure
	ros-lunar/moveit_core
	ros-lunar/moveit_msgs
	ros-lunar/moveit_ros_move_group
	ros-lunar/moveit_ros_planning
	ros-lunar/pluginlib
	ros-lunar/rosconsole
	ros-lunar/roscpp
	ros-lunar/tf
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	dev-cpp/eigen
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

