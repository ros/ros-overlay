# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="gazebo_video_monitor_plugins is a package that lets the user record videos [...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/nlamprian/gazebo_video_monitors-release/archive/release/noetic/${PN}/0.7.1-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="GPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/gazebo_ros
	ros-noetic/gazebo_video_monitor_msgs
	ros-noetic/roscpp
	ros-noetic/std_srvs
	media-libs/opencv
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	dev-cpp/yaml-cpp
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
