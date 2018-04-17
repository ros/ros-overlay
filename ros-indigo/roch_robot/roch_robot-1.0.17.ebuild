# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Metapackage for Soy roch robot software"
HOMEPAGE="http://wiki.ros.org/roch_robot"
SRC_URI="https://github.com/SawYerRobotics-release/${PN}-release/archive/release/indigo/${PN}/1.0.17-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/roch_base
	ros-indigo/roch_control
	ros-indigo/roch_description
	ros-indigo/roch_msgs
	ros-indigo/roch_safety_controller
	ros-indigo/roch_sensorpc
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
