# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The diffbot_base package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-mobile-robots-release/diffbot-release/archive/release/noetic/${PN}/1.1.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSDv3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/control_toolbox
	ros-noetic/controller_manager
	ros-noetic/diagnostic_updater
	ros-noetic/diff_drive_controller
	ros-noetic/diffbot_msgs
	ros-noetic/dynamic_reconfigure
	ros-noetic/hardware_interface
	ros-noetic/roscpp
	ros-noetic/rosparam_shortcuts
	ros-noetic/rosserial
	ros-noetic/sensor_msgs
	ros-noetic/urdf
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
