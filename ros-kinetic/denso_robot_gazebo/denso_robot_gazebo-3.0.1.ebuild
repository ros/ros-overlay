# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="DENSO robot simulation package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/DENSORobot/denso_robot_ros-release/archive/release/kinetic/${PN}/3.0.1-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/gazebo_ros_control
	ros-kinetic/gazebo_ros_pkgs
	ros-kinetic/joint_state_controller
	ros-kinetic/joint_trajectory_controller
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
