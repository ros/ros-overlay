# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The turtlebot meta package provides all the basic drivers for running and u[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/${PN}-release/${PN}-release/archive/release/indigo/${PN}/2.3.14-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/turtlebot_bringup
	ros-indigo/turtlebot_capabilities
	ros-indigo/turtlebot_description
	ros-indigo/turtlebot_teleop
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
