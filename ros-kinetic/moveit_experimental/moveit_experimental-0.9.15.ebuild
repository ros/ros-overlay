# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Experimental packages for moveit."
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/ros-gbp/moveit-release/archive/release/kinetic/${PN}/0.9.15-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/actionlib_msgs
	ros-kinetic/eigen_conversions
	ros-kinetic/eigen_stl_containers
	ros-kinetic/geometric_shapes
	ros-kinetic/geometry_msgs
	ros-kinetic/kdl_parser
	ros-kinetic/moveit_core
	ros-kinetic/moveit_msgs
	ros-kinetic/octomap
	ros-kinetic/octomap_msgs
	ros-kinetic/pluginlib
	ros-kinetic/rosconsole
	ros-kinetic/rostime
	ros-kinetic/sensor_msgs
	ros-kinetic/shape_msgs
	ros-kinetic/std_msgs
	ros-kinetic/trajectory_msgs
	ros-kinetic/visualization_msgs
	test? ( ros-kinetic/angles )
	test? ( ros-kinetic/moveit_resources )
	test? ( ros-kinetic/orocos_kdl )
	test? ( ros-kinetic/tf_conversions )
	media-libs/assimp
	dev-libs/boost
	dev-cpp/eigen
	dev-libs/console_bridge
	dev-libs/urdfdom
	dev-libs/urdfdom_headers
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/roslib
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
