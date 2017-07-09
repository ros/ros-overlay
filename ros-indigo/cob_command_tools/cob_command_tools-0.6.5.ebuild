# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'The cob_command_tools stack provides tools, for operating Care-O-bot.'"
HOMEPAGE="http://ros.org/wiki/cob_command_tools"
SRC_URI="https://github.com/ipa320/cob_command_tools-release/archive/release/indigo/cob_command_tools/0.6.5-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cob_command_gui
	ros-indigo/cob_dashboard
	ros-indigo/cob_interactive_teleop
	ros-indigo/cob_monitoring
	ros-indigo/cob_script_server
	ros-indigo/cob_teleop
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

