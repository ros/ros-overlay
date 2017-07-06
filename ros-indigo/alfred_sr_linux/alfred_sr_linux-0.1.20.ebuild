# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'The alfred_sr_linux package'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/rosalfred-release/alfred_sr_linux-release/archive/release/indigo/alfred_sr_linux/0.1.20-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="GPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/dynamic_reconfigure
	ros-indigo/message_runtime
	ros-indigo/rospy
	ros-indigo/smarthome_media_msgs
	ros-indigo/sound_play
	ros-indigo/std_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

