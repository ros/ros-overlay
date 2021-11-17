# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The Extensible Optimization Toolset \(EXOTica\) is a library for defining p[...]"
HOMEPAGE="https://github.com/ipab-slmc/exotica"
SRC_URI="https://github.com/ipab-slmc/exotica-release/archive/release/noetic/${PN}/6.2.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/eigen_conversions
	ros-noetic/geometry_msgs
	ros-noetic/kdl_parser
	ros-noetic/moveit_core
	ros-noetic/moveit_msgs
	ros-noetic/moveit_ros_planning
	ros-noetic/pluginlib
	ros-noetic/roscpp
	ros-noetic/std_msgs
	ros-noetic/tf
	ros-noetic/tf_conversions
	test? ( ros-noetic/rosunit )
	sci-libs/orocos_kdl
	sci-libs/orocos_kdl
	net-libs/cppzmq
	dev-libs/msgpack
	dev-libs/tinyxml2
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/cmake_modules
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
