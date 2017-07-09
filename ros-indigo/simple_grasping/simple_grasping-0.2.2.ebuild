# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Basic grasping applications and demos.'"
HOMEPAGE="http://ros.org/wiki/simple_grasping"
SRC_URI="https://github.com/fetchrobotics-gbp/simple_grasping-release/archive/release/indigo/simple_grasping/0.2.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/geometry_msgs
	ros-indigo/grasping_msgs
	ros-indigo/message_runtime
	ros-indigo/moveit_msgs
	ros-indigo/moveit_python
	ros-indigo/pcl_ros
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
	ros-indigo/shape_msgs
	ros-indigo/tf
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/cmake_modules
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

