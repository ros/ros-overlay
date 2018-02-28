# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Core libraries used by MoveIt!"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/ros-gbp/moveit-release/archive/release/lunar/${PN}/0.9.11-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
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
	test? ( ros-lunar/angles )
	test? ( ros-lunar/moveit_resources )
	test? ( ros-lunar/orocos_kdl )
	test? ( ros-lunar/rosunit )
	test? ( ros-lunar/tf_conversions )
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

src_prepare() {
	cd ${P}
	EPATCH_SOURCE="${FILESDIR}" EPATCH_SUFFIX="patch" \
	EPATCH_FORCE="yes" epatch
	ros-cmake_src_prepare
}
