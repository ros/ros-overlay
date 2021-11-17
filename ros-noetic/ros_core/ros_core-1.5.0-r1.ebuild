# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="A metapackage to aggregate the packages required to use publish / subscribe[...]"
HOMEPAGE="https://github.com/ros/metapackages"
SRC_URI="https://github.com/ros-gbp/metapackages-release/archive/release/noetic/${PN}/1.5.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/catkin
	ros-noetic/class_loader
	ros-noetic/cmake_modules
	ros-noetic/common_msgs
	ros-noetic/gencpp
	ros-noetic/geneus
	ros-noetic/genlisp
	ros-noetic/genmsg
	ros-noetic/gennodejs
	ros-noetic/genpy
	ros-noetic/message_generation
	ros-noetic/message_runtime
	ros-noetic/pluginlib
	ros-noetic/ros
	ros-noetic/ros_comm
	ros-noetic/rosbag_migration_rule
	ros-noetic/rosconsole
	ros-noetic/rosconsole_bridge
	ros-noetic/roscpp_core
	ros-noetic/rosgraph_msgs
	ros-noetic/roslisp
	ros-noetic/rospack
	ros-noetic/std_msgs
	ros-noetic/std_srvs
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
