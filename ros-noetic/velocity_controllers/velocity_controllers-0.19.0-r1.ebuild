# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="velocity_controllers"
HOMEPAGE="https://github.com/ros-controls/ros_controllers/wiki"
SRC_URI="https://github.com/ros-gbp/ros_controllers-release/archive/release/noetic/${PN}/0.19.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/control_msgs
	ros-noetic/control_toolbox
	ros-noetic/controller_interface
	ros-noetic/forward_command_controller
	ros-noetic/hardware_interface
	ros-noetic/realtime_tools
	ros-noetic/roscpp
	ros-noetic/std_msgs
	ros-noetic/urdf
"
DEPEND="${RDEPEND}
	ros-noetic/angles
	ros-noetic/catkin
	ros-noetic/pluginlib
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
