# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Filters the robot\'s body out of point clouds."
HOMEPAGE="http://ros.org/wiki/pr2_navigation_self_filter"
SRC_URI="https://github.com/pr2-gbp/pr2_navigation-release/archive/release/kinetic/${PN}/0.1.27-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

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
