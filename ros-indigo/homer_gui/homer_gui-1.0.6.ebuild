# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="''"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://gitlab.uni-koblenz.de/robbie/homer_gui/repository/archive.tar.gz?ref=release/indigo/homer_gui/1.0.6-0 -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/geometry_msgs
	ros-indigo/homer_mapnav_msgs
	ros-indigo/homer_nav_libs
	ros-indigo/message_runtime
	ros-indigo/or_libs
	ros-indigo/or_msgs
	ros-indigo/or_nodes
	ros-indigo/robbie_architecture
	ros-indigo/roscpp
	ros-indigo/roslib
	ros-indigo/rviz
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
	ros-indigo/tf
	dev-libs/boost
	dev-cpp/eigen
	media-libs/opencv
	sci-libs/pcl
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/cv_bridge
	ros-indigo/genmsg
	ros-indigo/message_generation
	dev-qt/qtcore:4
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

