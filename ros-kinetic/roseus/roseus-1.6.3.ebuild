# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="EusLisp client for ROs Robot Operating System."
HOMEPAGE="http://pr.willowgarage.com/wiki/roseus"
SRC_URI="https://github.com/tork-a/jsk_roseus-release/archive/release/kinetic/roseus/1.6.3-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/actionlib
	ros-kinetic/actionlib_msgs
	ros-kinetic/actionlib_tutorials
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/euslisp
	ros-kinetic/geneus
	ros-kinetic/geometry_msgs
	ros-kinetic/jskeus
	ros-kinetic/message_runtime
	ros-kinetic/rosbash
	ros-kinetic/roscpp
	ros-kinetic/roslang
	ros-kinetic/rosmsg
	ros-kinetic/rosnode
	ros-kinetic/rospack
	ros-kinetic/rostest
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/std_srvs
	ros-kinetic/tf
	ros-kinetic/tf2_ros
	ros-kinetic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/angles
	ros-kinetic/catkin
	ros-kinetic/message_generation
	ros-kinetic/mk
	ros-kinetic/rosbuild
	ros-kinetic/rostopic
	sys-apps/coreutils
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
