# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_7,3_8} )

inherit ros-cmake

DESCRIPTION="The cob_omni_drive_controller package provides a ros_controller plugin for [...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ipa320/cob_control-release/archive/release/noetic/${PN}/0.8.12-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/angles
	ros-noetic/cob_base_controller_utils
	ros-noetic/controller_interface
	ros-noetic/dynamic_reconfigure
	ros-noetic/geometry_msgs
	ros-noetic/hardware_interface
	ros-noetic/nav_msgs
	ros-noetic/pluginlib
	ros-noetic/realtime_tools
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/std_srvs
	ros-noetic/tf
	ros-noetic/tf2
	ros-noetic/urdf
	dev-libs/boost[python]
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
