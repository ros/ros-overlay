# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A metapackage to aggregate the packages required to use publish / subscribe, ser"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/metapackages-release/archive/release/lunar/ros_core/1.3.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/catkin
	ros-lunar/cmake_modules
	ros-lunar/common_msgs
	ros-lunar/gencpp
	ros-lunar/geneus
	ros-lunar/genlisp
	ros-lunar/genmsg
	ros-lunar/gennodejs
	ros-lunar/genpy
	ros-lunar/message_generation
	ros-lunar/message_runtime
	ros-lunar/ros
	ros-lunar/ros_comm
	ros-lunar/rosbag_migration_rule
	ros-lunar/rosconsole_bridge
	ros-lunar/roscpp_core
	ros-lunar/rosgraph_msgs
	ros-lunar/roslisp
	ros-lunar/rospack
	ros-lunar/std_msgs
	ros-lunar/std_srvs
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

