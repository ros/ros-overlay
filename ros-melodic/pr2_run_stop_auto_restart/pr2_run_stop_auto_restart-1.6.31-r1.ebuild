# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package provides a node that monitors the state of the run stops of th[...]"
HOMEPAGE="http://ros.org/wiki/pr2_run_stop_auto_restart"
SRC_URI="https://github.com/pr2-gbp/pr2_robot-release/archive/release/melodic/${PN}/1.6.31-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/pr2_msgs
	ros-melodic/pr2_power_board
	ros-melodic/roscpp
	ros-melodic/std_srvs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
