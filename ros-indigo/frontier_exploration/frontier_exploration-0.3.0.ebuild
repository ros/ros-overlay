# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="a#text"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/paulbovbel/frontier_exploration-release/archive/release/indigo/frontier_exploration/0.3.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="GPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/actionlib_msgs
	ros-indigo/costmap_2d
	ros-indigo/dynamic_reconfigure
	ros-indigo/geometry_msgs
	ros-indigo/message_runtime
	ros-indigo/move_base_msgs
	ros-indigo/roscpp
	ros-indigo/std_msgs
	ros-indigo/tf
	ros-indigo/visualization_msgs
	sci-libs/pcl
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
	sci-libs/pcl
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

