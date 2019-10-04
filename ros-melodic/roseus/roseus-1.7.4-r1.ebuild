# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="EusLisp client for ROS Robot Operating System."
HOMEPAGE="http://pr.willowgarage.com/wiki/roseus"
SRC_URI="https://github.com/tork-a/jsk_${PN}-release/archive/release/melodic/${PN}/1.7.4-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/actionlib
	ros-melodic/actionlib_msgs
	ros-melodic/actionlib_tutorials
	ros-melodic/dynamic_reconfigure
	ros-melodic/euslisp
	ros-melodic/geneus
	ros-melodic/geometry_msgs
	ros-melodic/jskeus
	ros-melodic/message_runtime
	ros-melodic/rosbash
	ros-melodic/roscpp
	ros-melodic/roslang
	ros-melodic/rosmsg
	ros-melodic/rosnode
	ros-melodic/rospack
	ros-melodic/rostest
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/std_srvs
	ros-melodic/tf
	ros-melodic/tf2_ros
	ros-melodic/visualization_msgs
	test? ( x11-misc/xvfb-run )
"
DEPEND="${RDEPEND}
	ros-melodic/angles
	ros-melodic/catkin
	ros-melodic/message_generation
	ros-melodic/mk
	ros-melodic/rosbuild
	ros-melodic/rostopic
	sys-apps/coreutils
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
