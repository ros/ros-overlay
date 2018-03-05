# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Python interfaces to MoveIt"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/ros-gbp/moveit-release/archive/release/lunar/${PN}/0.9.11-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/geometry_msgs
	ros-lunar/moveit_msgs
	ros-lunar/moveit_ros_planning_interface
	ros-lunar/rospy
	ros-lunar/sensor_msgs
	ros-lunar/shape_msgs
	ros-lunar/tf
	dev-lang/python
	media-libs/assimp
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	dev-python/catkin_pkg
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
