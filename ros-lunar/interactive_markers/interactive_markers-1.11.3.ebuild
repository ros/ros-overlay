# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="3D interactive marker communication library for RViz and similar tools."
HOMEPAGE="http://ros.org/wiki/interactive_markers"
SRC_URI="https://github.com/ros-gbp/interactive_markers-release/archive/release/lunar/interactive_markers/1.11.3-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/rosconsole
	ros-lunar/roscpp
	ros-lunar/rospy
	ros-lunar/rostest
	ros-lunar/std_msgs
	ros-lunar/tf
	ros-lunar/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
