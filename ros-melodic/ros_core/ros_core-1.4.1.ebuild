# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A metapackage to aggregate the packages required to use publish / subscribe[...]"
HOMEPAGE="https://github.com/ros/metapackages"
SRC_URI="https://github.com/ros-gbp/metapackages-release/archive/release/melodic/${PN}/1.4.1-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/catkin
	ros-melodic/class_loader
	ros-melodic/cmake_modules
	ros-melodic/common_msgs
	ros-melodic/gencpp
	ros-melodic/geneus
	ros-melodic/genlisp
	ros-melodic/genmsg
	ros-melodic/gennodejs
	ros-melodic/genpy
	ros-melodic/message_generation
	ros-melodic/message_runtime
	ros-melodic/pluginlib
	ros-melodic/ros
	ros-melodic/ros_comm
	ros-melodic/rosbag_migration_rule
	ros-melodic/rosconsole
	ros-melodic/rosconsole_bridge
	ros-melodic/roscpp_core
	ros-melodic/rosgraph_msgs
	ros-melodic/roslisp
	ros-melodic/rospack
	ros-melodic/std_msgs
	ros-melodic/std_srvs
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
