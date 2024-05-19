# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Filters the robot\'s body out of point clouds."
HOMEPAGE="http://ros.org/wiki/pr2_navigation_self_filter"
SRC_URI="https://github.com/pr2-gbp/pr2_navigation-release/archive/release/noetic/${PN}/0.2.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/filters
	ros-noetic/pcl_ros
	ros-noetic/resource_retriever
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	ros-noetic/tf
	ros-noetic/urdf
	ros-noetic/visualization_msgs
	media-libs/assimp
	sci-physics/bullet
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	media-libs/assimp
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
