# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package contains a number of URDF tutorials."
HOMEPAGE="http://ros.org/wiki/urdf_tutorial"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/melodic/${PN}/0.4.0-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/joint_state_publisher
	ros-melodic/robot_state_publisher
	ros-melodic/rviz
	ros-melodic/xacro
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/roslaunch
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
