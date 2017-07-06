# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'The oros_tools_examples package'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/easymov/oros_tools_examples-release/archive/release/kinetic/oros_tools_examples/0.1.3-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/oros_tools
	ros-kinetic/turtlebot
	ros-kinetic/turtlebot_navigation
	ros-kinetic/turtlebot_stage
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

