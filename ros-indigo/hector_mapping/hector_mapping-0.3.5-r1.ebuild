# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="hector_mapping is a SLAM approach that can be used without odometry as well[...]"
HOMEPAGE="http://ros.org/wiki/hector_mapping"
SRC_URI="https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/indigo/hector_mapping/0.3.5-1.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/laser_geometry
	ros-indigo/message_filters
	ros-indigo/message_runtime
	ros-indigo/nav_msgs
	ros-indigo/roscpp
	ros-indigo/tf
	ros-indigo/tf_conversions
	ros-indigo/visualization_msgs
	dev-libs/boost
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/cmake_modules
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
