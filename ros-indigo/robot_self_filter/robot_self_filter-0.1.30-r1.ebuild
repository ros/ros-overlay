# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Filters the robots body out of point clouds"
HOMEPAGE="http://ros.org/wiki/robot_self_filter"
SRC_URI="https://github.com/pr2-gbp/robot_self_filter-gbp/archive/release/indigo/robot_self_filter/0.1.30-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

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

