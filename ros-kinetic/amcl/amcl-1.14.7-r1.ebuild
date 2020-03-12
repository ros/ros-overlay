# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="<p>\
			amcl is a probabilistic localization system for a robot mo[...]"
HOMEPAGE="http://wiki.ros.org/amcl"
SRC_URI="https://github.com/ros-gbp/navigation-release/archive/release/kinetic/${PN}/1.14.7-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/nav_msgs
	ros-kinetic/rosbag
	ros-kinetic/roscpp
	ros-kinetic/std_srvs
	ros-kinetic/tf
	test? ( ros-kinetic/map_server )
	test? ( ros-kinetic/rostest )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_filters
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
