# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="This package contains common nodelet tools such as a mux, demux and throttle."
HOMEPAGE="http://ros.org/wiki/nodelet_topic_tools"
SRC_URI="https://github.com/ros-gbp/nodelet_core-release/archive/release/noetic/${PN}/1.10.2-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/dynamic_reconfigure
	ros-noetic/message_filters
	ros-noetic/nodelet
	ros-noetic/pluginlib
	ros-noetic/roscpp
	dev-libs/boost[python]
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
