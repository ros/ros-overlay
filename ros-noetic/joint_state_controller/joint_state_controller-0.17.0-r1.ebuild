# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Controller to publish joint state"
HOMEPAGE="https://github.com/ros-controls/ros_controllers/wiki"
SRC_URI="https://github.com/ros-gbp/ros_controllers-release/archive/release/noetic/${PN}/0.17.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/controller_interface
	ros-noetic/hardware_interface
	ros-noetic/pluginlib
	ros-noetic/realtime_tools
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	test? ( ros-noetic/rostest )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
