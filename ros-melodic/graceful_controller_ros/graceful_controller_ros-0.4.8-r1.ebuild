# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A controller. Some say it might be graceful."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/mikeferguson/graceful_controller-gbp/archive/release/melodic/${PN}/0.4.8-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/angles
	ros-melodic/base_local_planner
	ros-melodic/costmap_2d
	ros-melodic/dynamic_reconfigure
	ros-melodic/geometry_msgs
	ros-melodic/graceful_controller
	ros-melodic/nav_core
	ros-melodic/nav_msgs
	ros-melodic/pluginlib
	ros-melodic/roscpp
	ros-melodic/std_msgs
	ros-melodic/tf2_geometry_msgs
	ros-melodic/tf2_ros
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
