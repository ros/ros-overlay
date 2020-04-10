# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A path planner library and node."
HOMEPAGE="http://wiki.ros.org/global_planner"
SRC_URI="https://github.com/ros-gbp/navigation-release/archive/release/melodic/${PN}/1.16.6-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/costmap_2d
	ros-melodic/dynamic_reconfigure
	ros-melodic/geometry_msgs
	ros-melodic/nav_core
	ros-melodic/nav_msgs
	ros-melodic/navfn
	ros-melodic/pluginlib
	ros-melodic/roscpp
	ros-melodic/tf2_ros
"
DEPEND="${RDEPEND}
	ros-melodic/angles
	ros-melodic/catkin
	ros-melodic/tf2_geometry_msgs
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
