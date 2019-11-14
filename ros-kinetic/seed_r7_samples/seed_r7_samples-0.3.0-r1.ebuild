# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The seed_r7_samples package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/seed-solutions/seed_r7_ros_pkg-release/archive/release/kinetic/${PN}/0.3.0-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/seed_r7_bringup
	ros-kinetic/seed_r7_moveit_config
	ros-kinetic/seed_r7_navigation
	ros-kinetic/seed_r7_robot_interface
	ros-kinetic/seed_r7_ros_controller
	ros-kinetic/seed_r7_typef_moveit_config
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
