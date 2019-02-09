# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="EusLisp client for ROS Robot Operating System."
HOMEPAGE="http://pr.willowgarage.com/wiki/roseus"
SRC_URI="https://github.com/tork-a/jsk_${PN}-release/archive/release/lunar/${PN}/1.7.4-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-lunar/actionlib
	ros-lunar/actionlib_msgs
	ros-lunar/actionlib_tutorials
	ros-lunar/dynamic_reconfigure
	ros-lunar/euslisp
	ros-lunar/geneus
	ros-lunar/geometry_msgs
	ros-lunar/jskeus
	ros-lunar/message_runtime
	ros-lunar/rosbash
	ros-lunar/roscpp
	ros-lunar/roslang
	ros-lunar/rosmsg
	ros-lunar/rosnode
	ros-lunar/rospack
	ros-lunar/rostest
	ros-lunar/sensor_msgs
	ros-lunar/std_msgs
	ros-lunar/std_srvs
	ros-lunar/tf
	ros-lunar/tf2_ros
	ros-lunar/visualization_msgs
	test? ( x11-misc/xvfb-run )
"
DEPEND="${RDEPEND}
	ros-lunar/angles
	ros-lunar/catkin
	ros-lunar/message_generation
	ros-lunar/mk
	ros-lunar/rosbuild
	ros-lunar/rostopic
	sys-apps/coreutils
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
