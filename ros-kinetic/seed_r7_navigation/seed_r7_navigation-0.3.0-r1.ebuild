# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The seed_r7_navigation package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/seed-solutions/seed_r7_ros_pkg-release/archive/release/kinetic/${PN}/0.3.0-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/amcl
	ros-kinetic/gmapping
	ros-kinetic/joy
	ros-kinetic/map_server
	ros-kinetic/move_base
	ros-kinetic/move_base_msgs
	ros-kinetic/nav_msgs
	ros-kinetic/teb_local_planner
	ros-kinetic/teleop_twist_joy
	ros-kinetic/urg_node
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
