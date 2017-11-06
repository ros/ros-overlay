# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="naoqi_dashboard is a GUI for monitoring the state of an ALdebaran robot	It "
HOMEPAGE="http://ros.org/wiki/naoqi_dashboard"
SRC_URI="https://github.com/ros-naoqi/naoqi_dashboard-release/archive/release/indigo/naoqi_dashboard/0.1.4-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/diagnostic_aggregator
	ros-indigo/diagnostic_common_diagnostics
	ros-indigo/diagnostic_msgs
	ros-indigo/naoqi_bridge_msgs
	ros-indigo/rqt_robot_dashboard
	ros-indigo/rqt_robot_monitor
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

