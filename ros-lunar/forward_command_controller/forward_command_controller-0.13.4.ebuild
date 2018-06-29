# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="forward_command_controller"
HOMEPAGE="https://github.com/ros-controls/ros_controllers/wiki"
SRC_URI="https://github.com/ros-gbp/ros_controllers-release/archive/release/lunar/${PN}/0.13.4-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/controller_interface
	ros-lunar/hardware_interface
	ros-lunar/realtime_tools
	ros-lunar/std_msgs
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
