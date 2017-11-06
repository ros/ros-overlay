# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://gitlab.uni-koblenz.de/robbie/homer_object_recognition/repository/archive.tar.gz?ref=release/indigo/or_nodes/0.0.4-0 -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cv_bridge
	ros-indigo/homer_nav_libs
	ros-indigo/message_runtime
	ros-indigo/or_libs
	ros-indigo/or_msgs
	ros-indigo/robbie_architecture
	ros-indigo/roscpp_serialization
	ros-indigo/roslib
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
	ros-indigo/tf
	dev-libs/boost
	media-libs/opencv
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/cmake_modules
	ros-indigo/genmsg
	ros-indigo/message_generation
	ros-indigo/roscpp
	ros-indigo/roslang
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
