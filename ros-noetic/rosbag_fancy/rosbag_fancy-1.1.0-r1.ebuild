# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="rosbag with terminal UI"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/xqms/${PN}-release/archive/release/noetic/${PN}/1.1.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/rosbag_fancy_msgs
	ros-noetic/rosbag_storage
	ros-noetic/roscpp
	ros-noetic/rosfmt
	ros-noetic/roslz4
	ros-noetic/std_srvs
	ros-noetic/tf2_ros
	ros-noetic/topic_tools
	dev-libs/boost[python]
	app-arch/bzip2
	sys-libs/ncurses
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
