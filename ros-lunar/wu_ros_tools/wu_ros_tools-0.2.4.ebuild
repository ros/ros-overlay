# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A collection of tools for making a variety of generic ROS-related tasks easier."
HOMEPAGE="http://ros.org/wiki/wu_ros_tools"
SRC_URI="https://github.com/wu-robotics/${PN}/archive/release/lunar/${PN}/0.2.4-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/easy_markers
	ros-lunar/joy_listener
	ros-lunar/kalman_filter
	ros-lunar/rosbaglive
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
