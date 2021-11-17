# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Republishing of Selected TFs"
HOMEPAGE="http://ros.org/wiki/tf2_web_republisher"
SRC_URI="https://github.com/RobotWebTools-release/${PN}-release/archive/release/noetic/${PN}/0.3.2-3.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/actionlib
	ros-noetic/actionlib_msgs
	ros-noetic/geometry_msgs
	ros-noetic/message_runtime
	ros-noetic/roscpp
	ros-noetic/tf
	ros-noetic/tf2_ros
	test? ( ros-noetic/rospy )
	test? ( ros-noetic/rostest )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_generation
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
