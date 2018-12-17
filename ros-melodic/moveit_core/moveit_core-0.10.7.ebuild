# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Core libraries used by MoveIt!"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/ros-gbp/moveit-release/archive/release/melodic/${PN}/0.10.7-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/eigen_stl_containers
	ros-melodic/geometric_shapes
	ros-melodic/geometry_msgs
	ros-melodic/kdl_parser
	ros-melodic/moveit_experimental
	ros-melodic/moveit_msgs
	ros-melodic/octomap
	ros-melodic/octomap_msgs
	ros-melodic/random_numbers
	ros-melodic/rosconsole
	ros-melodic/rostime
	ros-melodic/sensor_msgs
	ros-melodic/srdfdom
	ros-melodic/std_msgs
	ros-melodic/tf2_eigen
	ros-melodic/tf2_kdl
	ros-melodic/trajectory_msgs
	ros-melodic/urdf
	ros-melodic/visualization_msgs
	test? ( ros-melodic/angles )
	test? ( ros-melodic/moveit_resources )
	test? ( ros-melodic/orocos_kdl )
	test? ( ros-melodic/rosunit )
	media-libs/assimp
	dev-libs/boost
	dev-cpp/eigen
	dev-libs/console_bridge
	sci-libs/fcl
	dev-libs/urdfdom
	dev-libs/urdfdom_headers
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/roslib
	ros-melodic/shape_msgs
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
