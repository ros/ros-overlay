# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'turtlebot_arm_bringup provides launch files for starting the drivers for the Tur'"
HOMEPAGE="http://ros.org/wiki/turtlebot_arm_bringup"
SRC_URI="https://github.com/turtlebot-release/turtlebot_arm-release/archive/release/indigo/turtlebot_arm_bringup/0.3.3-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/arbotix_controllers
	ros-indigo/arbotix_python
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

