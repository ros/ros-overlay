# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Controller to publish state of IMU sensors"
HOMEPAGE="https://github.com/ros-controls/ros_controllers/wiki"
SRC_URI="https://github.com/ros-gbp/ros_controllers-release/archive/release/noetic/${PN}/0.18.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/controller_interface
	ros-noetic/controller_manager
	ros-noetic/hardware_interface
	ros-noetic/realtime_tools
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/pluginlib
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
