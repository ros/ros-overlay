# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A controller ensuring the safe operation of roch.\
\
	The SafetyControll[...]"
HOMEPAGE="http://wiki.ros.org/roch_safety_controller"
SRC_URI="https://github.com/SawYerRobotics-release/roch_robot-release/archive/release/indigo/${PN}/1.0.17-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/ecl_threads
	ros-indigo/geometry_msgs
	ros-indigo/roch_msgs
	ros-indigo/roscpp
	ros-indigo/std_msgs
	ros-indigo/yocs_controllers
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
