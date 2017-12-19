# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Core libraries used by MoveIt!"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/moveit-release/archive/release/kinetic/${PN}/0.9.10-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/eigen_conversions
	ros-kinetic/eigen_stl_containers
	ros-kinetic/geometric_shapes
	ros-kinetic/geometry_msgs
	ros-kinetic/kdl_parser
	ros-kinetic/moveit_msgs
	ros-kinetic/octomap
	ros-kinetic/octomap_msgs
	ros-kinetic/random_numbers
	ros-kinetic/rostime
	ros-kinetic/sensor_msgs
	ros-kinetic/srdfdom
	ros-kinetic/std_msgs
	ros-kinetic/trajectory_msgs
	ros-kinetic/urdf
	ros-kinetic/visualization_msgs
	media-libs/assimp
	dev-libs/boost
	dev-cpp/eigen
	dev-libs/console_bridge
	sci-libs/fcl
	dev-libs/urdfdom
	dev-libs/urdfdom_headers
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/roslib
	ros-kinetic/shape_msgs
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
