# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The cob_collision_velocity_filter package is a package for collision avoida[...]"
HOMEPAGE="http://ros.org/wiki/cob_collision_velocity_filter"
SRC_URI="https://github.com/ipa320/cob_control-release/archive/release/kinetic/${PN}/0.7.9-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cob_footprint_observer
	ros-kinetic/costmap_2d
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/geometry_msgs
	ros-kinetic/nav_msgs
	ros-kinetic/roscpp
	ros-kinetic/tf
	ros-kinetic/tf2_ros
	ros-kinetic/visualization_msgs
	dev-libs/boost[python]
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
