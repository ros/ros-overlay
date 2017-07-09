# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'ROS packages for controlling Segway-based robots at the Learning Agents
	Rese'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/utexas-bwi-gbp/segbot-release/archive/release/indigo/segbot/0.3.5-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/segbot_bringup
	ros-indigo/segbot_description
	ros-indigo/segbot_firmware
	ros-indigo/segbot_gazebo
	ros-indigo/segbot_gui
	ros-indigo/segbot_logical_translator
	ros-indigo/segbot_navigation
	ros-indigo/segbot_sensors
	ros-indigo/segbot_simulation_apps
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

