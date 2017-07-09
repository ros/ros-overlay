# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package pulls in the Karto mapping library, and provides a ROS	 wrapper"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/slam_karto-release/archive/release/kinetic/slam_karto/0.7.3-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/message_filters
	ros-kinetic/nav_msgs
	ros-kinetic/open_karto
	ros-kinetic/rosconsole
	ros-kinetic/roscpp
	ros-kinetic/sensor_msgs
	ros-kinetic/sparse_bundle_adjustment
	ros-kinetic/tf
	ros-kinetic/visualization_msgs
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/cmake_modules
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

