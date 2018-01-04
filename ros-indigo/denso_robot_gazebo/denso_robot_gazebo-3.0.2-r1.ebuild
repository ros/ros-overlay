# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The denso robot gazebo package includes a launch file for simulating DENSO [...]"
HOMEPAGE="http://ros.org/wiki/denso_robot_gazebo"
SRC_URI="https://github.com/DENSORobot/denso_robot_ros-release/archive/release/indigo/${PN}/3.0.2-1.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/gazebo_ros_control
	ros-indigo/gazebo_ros_pkgs
	ros-indigo/joint_state_controller
	ros-indigo/joint_trajectory_controller
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
