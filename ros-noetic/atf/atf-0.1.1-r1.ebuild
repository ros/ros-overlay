# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="An automated testing framework \(ATF\) written for ROS which supports execu[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/floweisshardt/${PN}-release/archive/release/noetic/${PN}/0.1.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/atf_core
	ros-noetic/atf_metrics
	ros-noetic/atf_msgs
	ros-noetic/atf_plotter
	ros-noetic/atf_recorder_plugins
	ros-noetic/atf_test
	ros-noetic/atf_test_tools
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
