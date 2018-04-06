# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A metapackage to aggregate the packages required to use publish / subscribe[...]"
HOMEPAGE="https://github.com/ros/metapackages"
SRC_URI="https://github.com/ros-gbp/metapackages-release/archive/release/kinetic/${PN}/1.3.2-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/catkin
	ros-kinetic/cmake_modules
	ros-kinetic/common_msgs
	ros-kinetic/gencpp
	ros-kinetic/geneus
	ros-kinetic/genlisp
	ros-kinetic/genmsg
	ros-kinetic/gennodejs
	ros-kinetic/genpy
	ros-kinetic/message_generation
	ros-kinetic/message_runtime
	ros-kinetic/ros
	ros-kinetic/ros_comm
	ros-kinetic/rosbag_migration_rule
	ros-kinetic/rosconsole_bridge
	ros-kinetic/roscpp_core
	ros-kinetic/rosgraph_msgs
	ros-kinetic/roslisp
	ros-kinetic/rospack
	ros-kinetic/std_msgs
	ros-kinetic/std_srvs
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
