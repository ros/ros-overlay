# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="ROS package to detect handles."
HOMEPAGE="http://wiki.ros.org/handle_detector"
SRC_URI="https://github.com/atenpas/handle_detector-release/archive/release/indigo/handle_detector/1.3.1-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cmake_modules
	ros-indigo/eigen_conversions
	ros-indigo/geometry_msgs
	ros-indigo/message_runtime
	ros-indigo/pcl_conversions
	ros-indigo/roscpp
	ros-indigo/std_msgs
	ros-indigo/tf
	ros-indigo/tf_conversions
	ros-indigo/visualization_msgs
	virtual/lapack
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
