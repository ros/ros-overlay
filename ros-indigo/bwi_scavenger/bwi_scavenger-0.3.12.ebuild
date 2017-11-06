# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Robot scavenger hunt interfaces for the Building-Wide Intelligence\
	pro[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/utexas-bwi-gbp/bwi_common-release/archive/release/indigo/bwi_scavenger/0.3.12-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/actionlib_msgs
	ros-indigo/bwi_kr_execution
	ros-indigo/bwi_msgs
	ros-indigo/cv_bridge
	ros-indigo/image_transport
	ros-indigo/message_runtime
	ros-indigo/move_base_msgs
	ros-indigo/pcl_ros
	ros-indigo/roscpp
	ros-indigo/sound_play
	ros-indigo/std_msgs
	ros-indigo/visualization_msgs
	dev-libs/boost
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
