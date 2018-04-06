# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A metapackage to aggregate the packages required to use publish / subscribe[...]"
HOMEPAGE="https://github.com/ros/metapackages"
SRC_URI="https://github.com/ros-gbp/metapackages-release/archive/release/indigo/${PN}/1.1.6-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/catkin
	ros-indigo/cmake_modules
	ros-indigo/common_msgs
	ros-indigo/gencpp
	ros-indigo/genlisp
	ros-indigo/genmsg
	ros-indigo/genpy
	ros-indigo/message_generation
	ros-indigo/message_runtime
	ros-indigo/ros
	ros-indigo/ros_comm
	ros-indigo/rosbag_migration_rule
	ros-indigo/rosconsole_bridge
	ros-indigo/roscpp_core
	ros-indigo/rosgraph_msgs
	ros-indigo/roslisp
	ros-indigo/rospack
	ros-indigo/std_msgs
	ros-indigo/std_srvs
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
