# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="swri_profiler provides basic tools for real-time selective\
	profiling o[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/swri-robotics-gbp/${PN}-release/archive/release/indigo/${PN}/0.2.0-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="Copyright SwRI"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/diagnostic_updater
	ros-indigo/rosbridge_server
	ros-indigo/roscpp
	ros-indigo/rospy
	ros-indigo/std_msgs
	ros-indigo/swri_profiler_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
