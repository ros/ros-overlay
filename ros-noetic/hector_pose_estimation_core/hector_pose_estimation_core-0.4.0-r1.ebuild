# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="hector_pose_estimation_core is the core package of the hector_localization [...]"
HOMEPAGE="http://ros.org/wiki/hector_pose_estimation_core"
SRC_URI="https://github.com/tu-darmstadt-ros-pkg-gbp/hector_localization-release/archive/release/noetic/${PN}/0.4.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/geographic_msgs
	ros-noetic/geometry_msgs
	ros-noetic/nav_msgs
	ros-noetic/rosconsole
	ros-noetic/roscpp
	ros-noetic/rostime
	ros-noetic/sensor_msgs
	ros-noetic/tf
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/cmake_modules
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
