# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package contains a number of URDF tutorials"
HOMEPAGE="http://ros.org/wiki/urdf_tutorial"
SRC_URI="https://github.com/ros-gbp/urdf_tutorial-release/archive/release/kinetic/urdf_tutorial/0.3.0-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/joint_state_publisher
	ros-kinetic/robot_state_publisher
	ros-kinetic/rviz
	ros-kinetic/xacro
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/roslaunch
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

