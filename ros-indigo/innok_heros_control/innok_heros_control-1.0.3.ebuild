# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'package to control the Innok Heros with several devices (e. g. joystick and keyb'"
HOMEPAGE="http://wiki.ros.org/Robots/Innok-Heros"
SRC_URI="https://github.com/innokrobotics/innok_heros_control-release/archive/release/indigo/innok_heros_control/1.0.3-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/controller_manager
	ros-indigo/innok_heros_description
	ros-indigo/innok_heros_gazebo
	ros-indigo/joy
	ros-indigo/teleop_twist_joy
	ros-indigo/teleop_twist_keyboard
	ros-indigo/twist_mux
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/roslaunch
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

