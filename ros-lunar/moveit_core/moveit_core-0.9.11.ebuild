# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Core libraries used by MoveIt!"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/moveit-release/archive/release/lunar/${PN}/0.9.11-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/eigen_conversions
	ros-lunar/eigen_stl_containers
	ros-lunar/geometric_shapes
	ros-lunar/geometry_msgs
	ros-lunar/kdl_parser
	ros-lunar/moveit_msgs
	ros-lunar/octomap
	ros-lunar/octomap_msgs
	ros-lunar/random_numbers
	ros-lunar/rostime
	ros-lunar/sensor_msgs
	ros-lunar/srdfdom
	ros-lunar/std_msgs
	ros-lunar/trajectory_msgs
	ros-lunar/urdf
	ros-lunar/visualization_msgs
	media-libs/assimp
	dev-libs/boost
	dev-cpp/eigen
	dev-libs/console_bridge
	sci-libs/fcl
	dev-libs/urdfdom
	dev-libs/urdfdom_headers
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/roslib
	ros-lunar/shape_msgs
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
