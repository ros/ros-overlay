# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Filters the robot\'s body out of point clouds."
HOMEPAGE="http://ros.org/wiki/robot_self_filter"
SRC_URI="https://github.com/pr2-gbp/${PN}-gbp/archive/release/melodic/${PN}/0.1.31-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/filters
	ros-melodic/pcl_ros
	ros-melodic/resource_retriever
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	ros-melodic/tf
	ros-melodic/urdf
	ros-melodic/visualization_msgs
	media-libs/assimp
	sci-physics/bullet
	dev-libs/tinyxml
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/cmake_modules
	media-libs/assimp
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
