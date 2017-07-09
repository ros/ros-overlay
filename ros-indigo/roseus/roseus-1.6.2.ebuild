# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'EusLisp client for ROs Robot Operating System.'"
HOMEPAGE="http://pr.willowgarage.com/wiki/roseus"
SRC_URI="https://github.com/tork-a/jsk_roseus-release/archive/release/indigo/roseus/1.6.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/actionlib_msgs
	ros-indigo/actionlib_tutorials
	ros-indigo/dynamic_reconfigure
	ros-indigo/euslisp
	ros-indigo/geneus
	ros-indigo/geometry_msgs
	ros-indigo/jskeus
	ros-indigo/message_runtime
	ros-indigo/rosbash
	ros-indigo/roscpp
	ros-indigo/roslang
	ros-indigo/rosmsg
	ros-indigo/rosnode
	ros-indigo/rospack
	ros-indigo/rostest
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
	ros-indigo/std_srvs
	ros-indigo/tf
	ros-indigo/tf2_ros
	ros-indigo/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/angles
	ros-indigo/catkin
	ros-indigo/message_generation
	ros-indigo/mk
	ros-indigo/rosbuild
	ros-indigo/rostopic
	sys-apps/coreutils
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

