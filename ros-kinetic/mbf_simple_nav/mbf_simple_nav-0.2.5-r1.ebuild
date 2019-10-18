# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The mbf_simple_nav package contains a simple navigation server implementati[...]"
HOMEPAGE="http://wiki.ros.org/move_base_flex"
SRC_URI="https://github.com/uos-gbp/move_base_flex-release/archive/release/kinetic/${PN}/0.2.5-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="3-Clause BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/actionlib
	ros-kinetic/actionlib_msgs
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/geometry_msgs
	ros-kinetic/mbf_abstract_core
	ros-kinetic/mbf_abstract_nav
	ros-kinetic/mbf_msgs
	ros-kinetic/nav_msgs
	ros-kinetic/pluginlib
	ros-kinetic/roscpp
	ros-kinetic/std_msgs
	ros-kinetic/std_srvs
	ros-kinetic/tf
	ros-kinetic/tf2
	ros-kinetic/tf2_ros
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
