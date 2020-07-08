# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="rosbag with terminal UI"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/xqms/${PN}-release/archive/release/melodic/${PN}/0.2.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/rosbag_storage
	ros-melodic/roscpp
	ros-melodic/rosfmt
	ros-melodic/tf2_ros
	ros-melodic/topic_tools
	dev-libs/boost[python]
	sys-libs/ncurses
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
