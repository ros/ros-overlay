# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Calibrates the offsets of F/T sensors and the mass and position of the COM of gr'"
HOMEPAGE="http://wiki.ros.org/force_torque_sensor_calib"
SRC_URI="https://github.com/ros-gbp/force_torque_tools-release/archive/release/indigo/force_torque_sensor_calib/1.0.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cmake_modules
	ros-indigo/eigen_conversions
	ros-indigo/geometry_msgs
	ros-indigo/moveit_core
	ros-indigo/moveit_ros_planning
	ros-indigo/moveit_ros_planning_interface
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
	ros-indigo/tf
	ros-indigo/tf_conversions
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

