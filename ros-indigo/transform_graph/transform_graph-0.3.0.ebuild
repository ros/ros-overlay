# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Library for computing transformations in arbitrary graph structures."
HOMEPAGE="http://wiki.ros.org/transform_graph"
SRC_URI="https://github.com/jstnhuang-release/${PN}-release/archive/release/indigo/${PN}/0.3.0-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-indigo/cmake_modules
	ros-indigo/eigen_conversions
	ros-indigo/geometry_msgs
	ros-indigo/roscpp
	ros-indigo/rospy
	ros-indigo/tf
	ros-indigo/tf_conversions
	test? ( ros-indigo/rosunit )
	sci-libs/pcl
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
