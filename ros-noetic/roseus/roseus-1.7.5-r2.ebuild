# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="EusLisp client for ROS Robot Operating System."
HOMEPAGE="http://pr.willowgarage.com/wiki/roseus"
SRC_URI="https://github.com/tork-a/jsk_${PN}-release/archive/release/noetic/${PN}/1.7.5-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/actionlib
	ros-noetic/actionlib_msgs
	ros-noetic/actionlib_tutorials
	ros-noetic/dynamic_reconfigure
	ros-noetic/euslisp
	ros-noetic/geneus
	ros-noetic/geometry_msgs
	ros-noetic/jskeus
	ros-noetic/message_runtime
	ros-noetic/rosbash
	ros-noetic/roscpp
	ros-noetic/roslang
	ros-noetic/rosmsg
	ros-noetic/rosnode
	ros-noetic/rospack
	ros-noetic/rostest
	ros-noetic/sensor_msgs
	ros-noetic/shape_msgs
	ros-noetic/std_msgs
	ros-noetic/std_srvs
	ros-noetic/tf
	ros-noetic/tf2_ros
	ros-noetic/visualization_msgs
	test? ( x11-misc/xvfb-run )
"
DEPEND="${RDEPEND}
	ros-noetic/angles
	ros-noetic/catkin
	ros-noetic/message_generation
	ros-noetic/mk
	ros-noetic/rosbuild
	ros-noetic/rostopic
	sys-apps/coreutils
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
