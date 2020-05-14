# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The Move Base Flex \(MBF\) recovery behavior moves the robot back for speci[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/uos-gbp/mbf_recovery_behaviors/archive/release/melodic/${PN}/0.1.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/base_local_planner
	ros-melodic/costmap_2d
	ros-melodic/mbf_costmap_core
	ros-melodic/mbf_msgs
	ros-melodic/pluginlib
	ros-melodic/roscpp
	ros-melodic/tf2_geometry_msgs
	ros-melodic/tf2_ros
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
