# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Helper functions for displaying and debugging data in Rviz via published ma[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/davetcoleman/${PN}-release/archive/release/indigo/${PN}/2.2.1-1.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-indigo/eigen_conversions
	ros-indigo/geometry_msgs
	ros-indigo/graph_msgs
	ros-indigo/std_msgs
	ros-indigo/tf_conversions
	ros-indigo/trajectory_msgs
	ros-indigo/visualization_msgs
	test? ( ros-indigo/rostest )
	test? ( ros-indigo/rosunit )
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/cmake_modules
	ros-indigo/roscpp
	ros-indigo/roslint
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
