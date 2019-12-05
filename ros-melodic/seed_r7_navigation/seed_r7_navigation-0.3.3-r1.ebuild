# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The seed_r7_navigation package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/seed-solutions/seed_r7_ros_pkg-release/archive/release/melodic/${PN}/0.3.3-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/amcl
	ros-melodic/gmapping
	ros-melodic/joy
	ros-melodic/map_server
	ros-melodic/move_base
	ros-melodic/move_base_msgs
	ros-melodic/nav_msgs
	ros-melodic/rospy
	ros-melodic/teb_local_planner
	ros-melodic/teleop_twist_joy
	ros-melodic/urg_node
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
