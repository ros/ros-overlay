# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The seed_r7_robot_interface package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/seed-solutions/seed_r7_ros_pkg-release/archive/release/kinetic/${PN}/0.2.0-2.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/roscpp
	ros-kinetic/roslib
	ros-kinetic/seed_r7_description
	ros-kinetic/seed_r7_typef_moveit_config
	ros-kinetic/seed_smartactuator_sdk
	ros-kinetic/std_msgs
	ros-kinetic/tf
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
