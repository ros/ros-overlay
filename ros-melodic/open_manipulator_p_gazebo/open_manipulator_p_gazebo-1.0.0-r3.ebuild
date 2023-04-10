# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Package for OpenMANIPULATOR-P Gazebo"
HOMEPAGE="http://wiki.ros.org/open_manipulator_p_gazebo"
SRC_URI="https://github.com/ROBOTIS-GIT-release/open_manipulator_p_simulations-release/archive/release/melodic/${PN}/1.0.0-3.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/controller_manager
	ros-melodic/gazebo_ros
	ros-melodic/gazebo_ros_control
	ros-melodic/roscpp
	ros-melodic/std_msgs
	ros-melodic/urdf
	ros-melodic/xacro
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
