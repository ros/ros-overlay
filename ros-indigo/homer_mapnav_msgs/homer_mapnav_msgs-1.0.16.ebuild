# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://gitlab.uni-koblenz.de/robbie/homer_mapnav/repository/archive.tar.gz?ref=release/indigo/homer_mapnav_msgs/1.0.16-0 -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/geometry_msgs
	ros-indigo/message_runtime
	ros-indigo/nav_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/cmake_modules
	ros-indigo/genmsg
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
