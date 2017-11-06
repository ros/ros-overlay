# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Tools and Modules for the Interactive World Models"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/gt-rail-release/interactive_world-release/archive/release/indigo/interactive_world_tools/0.0.12-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/geometry_msgs
	ros-indigo/interactive_world_msgs
	ros-indigo/move_base_msgs
	ros-indigo/rail_manipulation_msgs
	ros-indigo/roscpp
	ros-indigo/roslib
	ros-indigo/std_srvs
	ros-indigo/tf2
	ros-indigo/tf2_ros
	dev-libs/boost
	net-misc/curl
	dev-libs/jsoncpp
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
