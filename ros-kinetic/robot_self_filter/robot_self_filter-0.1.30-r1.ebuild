# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Filters the robots body out of point clouds"
HOMEPAGE="http://ros.org/wiki/robot_self_filter"
SRC_URI="https://github.com/pr2-gbp/robot_self_filter-gbp/archive/release/kinetic/robot_self_filter/0.1.30-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/filters
	ros-kinetic/pcl_ros
	ros-kinetic/resource_retriever
	ros-kinetic/roscpp
	ros-kinetic/sensor_msgs
	ros-kinetic/tf
	ros-kinetic/urdf
	ros-kinetic/visualization_msgs
	media-libs/assimp
	sci-physics/bullet
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	media-libs/assimp
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

