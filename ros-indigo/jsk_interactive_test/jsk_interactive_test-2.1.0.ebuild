# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="jsk_interactive_test"
HOMEPAGE="http://ros.org/wiki/jsk_interactive_test"
SRC_URI="https://github.com/tork-a/jsk_visualization-release/archive/release/indigo/jsk_interactive_test/2.1.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/jsk_interactive
	ros-indigo/jsk_interactive_marker
	ros-indigo/rospy
	ros-indigo/rviz
	ros-indigo/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/mk
	ros-indigo/rosbuild
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

