# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Geographic mapping using Open Street Map data."
HOMEPAGE="http://ros.org/wiki/osm_cartography"
SRC_URI="https://github.com/ros-geographic-info/open_street_map-release/archive/release/noetic/${PN}/0.3.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/dynamic_reconfigure
	ros-noetic/geodesy
	ros-noetic/geographic_msgs
	ros-noetic/geometry_msgs
	ros-noetic/rospy
	ros-noetic/route_network
	ros-noetic/std_msgs
	ros-noetic/tf
	ros-noetic/visualization_msgs
	test? ( ros-noetic/roslaunch )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
