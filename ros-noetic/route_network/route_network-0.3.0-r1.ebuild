# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Route network graphing and path planning."
HOMEPAGE="http://ros.org/wiki/route_network"
SRC_URI="https://github.com/ros-geographic-info/open_street_map-release/archive/release/noetic/${PN}/0.3.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/dynamic_reconfigure
	ros-noetic/geodesy
	ros-noetic/geographic_msgs
	ros-noetic/geometry_msgs
	ros-noetic/nav_msgs
	ros-noetic/rospy
	ros-noetic/visualization_msgs
	test? ( ros-noetic/roslaunch )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/rostest
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
