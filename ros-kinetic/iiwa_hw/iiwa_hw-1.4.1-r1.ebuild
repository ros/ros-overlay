# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The hardware interface to an KUKA LBR IIWA Robot"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ipa-rwu/iiwa_stack-release/archive/release/kinetic/${PN}/1.4.1-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cmake_modules
	ros-kinetic/control_toolbox
	ros-kinetic/controller_interface
	ros-kinetic/controller_manager
	ros-kinetic/hardware_interface
	ros-kinetic/iiwa_msgs
	ros-kinetic/iiwa_ros
	ros-kinetic/joint_limits_interface
	ros-kinetic/realtime_tools
	ros-kinetic/roscpp
	ros-kinetic/tf
	ros-kinetic/urdf
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
