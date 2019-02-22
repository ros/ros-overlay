# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="OpenManipulator controller package"
HOMEPAGE="http://wiki.ros.org/open_manipulator_controller"
SRC_URI="https://github.com/ROBOTIS-GIT-release/open_manipulator-release/archive/release/melodic/${PN}/2.0.1-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/cmake_modules
	ros-melodic/geometry_msgs
	ros-melodic/moveit_core
	ros-melodic/moveit_msgs
	ros-melodic/moveit_ros_planning
	ros-melodic/moveit_ros_planning_interface
	ros-melodic/open_manipulator_libs
	ros-melodic/open_manipulator_msgs
	ros-melodic/robotis_manipulator
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/trajectory_msgs
	dev-libs/boost[python]
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
