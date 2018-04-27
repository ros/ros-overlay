# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Filters the robot\'s body out of point clouds."
HOMEPAGE="http://ros.org/wiki/pr2_navigation_self_filter"
SRC_URI="https://github.com/pr2-gbp/pr2_navigation-release/archive/release/indigo/${PN}/0.1.28-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/filters
	ros-indigo/pcl_ros
	ros-indigo/resource_retriever
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
	ros-indigo/tf
	ros-indigo/urdf
	ros-indigo/visualization_msgs
	media-libs/assimp
	sci-physics/bullet
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	media-libs/assimp
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
