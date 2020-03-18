# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The cob_command_tools stack provides tools, for operating Care-O-bot."
HOMEPAGE="http://ros.org/wiki/cob_command_tools"
SRC_URI="https://github.com/ipa320/${PN}-release/archive/release/melodic/${PN}/0.6.16-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/cob_command_gui
	ros-melodic/cob_dashboard
	ros-melodic/cob_helper_tools
	ros-melodic/cob_interactive_teleop
	ros-melodic/cob_monitoring
	ros-melodic/cob_script_server
	ros-melodic/cob_teleop
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
