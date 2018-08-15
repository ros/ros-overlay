# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Basic grasping applications and demos."
HOMEPAGE="http://ros.org/wiki/simple_grasping"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/melodic/${PN}/0.3.1-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/actionlib
	ros-melodic/geometry_msgs
	ros-melodic/grasping_msgs
	ros-melodic/message_runtime
	ros-melodic/moveit_msgs
	ros-melodic/moveit_python
	ros-melodic/pcl_ros
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	ros-melodic/shape_msgs
	ros-melodic/tf
	sci-libs/vtk[qt5,rendering]
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/cmake_modules
	ros-melodic/message_generation
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
