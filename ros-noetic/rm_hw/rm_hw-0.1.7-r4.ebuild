# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="ROS control warped interface for RoboMaster motor and some robot hardware"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/rm-controls/rm_control-release/archive/release/noetic/${PN}/0.1.7-4.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/controller_interface
	ros-noetic/controller_manager
	ros-noetic/hardware_interface
	ros-noetic/joint_limits_interface
	ros-noetic/realtime_tools
	ros-noetic/rm_common
	ros-noetic/rm_msgs
	ros-noetic/roscpp
	ros-noetic/roslint
	ros-noetic/transmission_interface
	ros-noetic/urdf
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
