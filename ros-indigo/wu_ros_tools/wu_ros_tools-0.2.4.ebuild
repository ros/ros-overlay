# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A collection of tools for making a variety of generic ROS-related tasks easier."
HOMEPAGE="http://ros.org/wiki/wu_ros_tools"
SRC_URI="https://github.com/wu-robotics/wu_ros_tools/archive/release/indigo/wu_ros_tools/0.2.4-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/catkinize_this
	ros-indigo/easy_markers
	ros-indigo/joy_listener
	ros-indigo/kalman_filter
	ros-indigo/manifest_cleaner
	ros-indigo/rosbaglive
	ros-indigo/roswiki_node
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
