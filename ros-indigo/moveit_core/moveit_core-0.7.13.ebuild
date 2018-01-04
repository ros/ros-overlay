# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Core libraries used by MoveIt!"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/moveit-release/archive/release/indigo/${PN}/0.7.13-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/eigen_conversions
	ros-indigo/eigen_stl_containers
	ros-indigo/fcl
	ros-indigo/geometric_shapes
	ros-indigo/geometry_msgs
	ros-indigo/kdl_parser
	ros-indigo/moveit_msgs
	ros-indigo/octomap
	ros-indigo/octomap_msgs
	ros-indigo/random_numbers
	ros-indigo/rostime
	ros-indigo/sensor_msgs
	ros-indigo/srdfdom
	ros-indigo/std_msgs
	ros-indigo/trajectory_msgs
	ros-indigo/visualization_msgs
	media-libs/assimp
	dev-libs/boost
	dev-cpp/eigen
	dev-libs/console_bridge
	dev-libs/urdfdom
	dev-libs/urdfdom_headers
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/cmake_modules
	ros-indigo/roslib
	ros-indigo/shape_msgs
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
