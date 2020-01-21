# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Route network graphing and path planning."
HOMEPAGE="http://ros.org/wiki/route_network"
SRC_URI="https://github.com/ros-geographic-info/open_street_map-release/archive/release/melodic/${PN}/0.2.5-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/dynamic_reconfigure
	ros-melodic/geodesy
	ros-melodic/geographic_msgs
	ros-melodic/geometry_msgs
	ros-melodic/nav_msgs
	ros-melodic/rospy
	ros-melodic/visualization_msgs
	test? ( ros-melodic/roslaunch )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/rostest
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
