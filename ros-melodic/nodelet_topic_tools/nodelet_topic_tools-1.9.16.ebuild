# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package contains common nodelet tools such as a mux, demux and throttle."
HOMEPAGE="http://ros.org/wiki/nodelet_topic_tools"
SRC_URI="https://github.com/ros-gbp/nodelet_core-release/archive/release/melodic/${PN}/1.9.16-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/dynamic_reconfigure
	ros-melodic/message_filters
	ros-melodic/nodelet
	ros-melodic/pluginlib
	ros-melodic/roscpp
	dev-libs/boost
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
