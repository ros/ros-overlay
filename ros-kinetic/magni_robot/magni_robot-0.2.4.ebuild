# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The magni_robot package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/UbiquityRobotics-release/${PN}-release/archive/release/kinetic/${PN}/0.2.4-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/magni_bringup
	ros-kinetic/magni_demos
	ros-kinetic/magni_description
	ros-kinetic/magni_nav
	ros-kinetic/magni_teleop
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
