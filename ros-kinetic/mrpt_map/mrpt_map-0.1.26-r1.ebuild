# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The mrpt_map is able to publish a mrpt map as ros occupancy grid like the m[...]"
HOMEPAGE="http://wiki.ros.org/mrpt_map"
SRC_URI="https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/kinetic/${PN}/0.1.26-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/mrpt1
	ros-kinetic/mrpt_bridge
	ros-kinetic/nav_msgs
	ros-kinetic/roscpp
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/tf
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
