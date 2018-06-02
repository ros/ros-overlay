# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The tuw_msgs meta package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tuw-robotics/${PN}-release/archive/release/kinetic/${PN}/0.0.7-2.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/tuw_airskin_msgs
	ros-kinetic/tuw_gazebo_msgs
	ros-kinetic/tuw_geometry_msgs
	ros-kinetic/tuw_multi_robot_msgs
	ros-kinetic/tuw_nav_msgs
	ros-kinetic/tuw_object_msgs
	ros-kinetic/tuw_vehicle_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
