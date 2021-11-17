# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="jsk_interactive"
HOMEPAGE="http://ros.org/wiki/jsk_interactive"
SRC_URI="https://github.com/tork-a/jsk_visualization-release/archive/release/noetic/${PN}/2.1.7-4.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/actionlib
	ros-noetic/dynamic_tf_publisher
	ros-noetic/geometry_msgs
	ros-noetic/jsk_interactive_marker
	ros-noetic/rospy
	ros-noetic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/mk
	ros-noetic/rosbuild
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
