# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The diffbot_control package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-mobile-robots-release/diffbot-release/archive/release/noetic/${PN}/1.1.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/controller_manager
	ros-noetic/diff_drive_controller
	ros-noetic/hardware_interface
	ros-noetic/joint_state_controller
	ros-noetic/robot_state_publisher
	ros-noetic/roscpp
	ros-noetic/rosparam_shortcuts
	ros-noetic/sensor_msgs
	ros-noetic/transmission_interface
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
