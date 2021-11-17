# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="ROS node for rpi_ws281x LED strip driver"
HOMEPAGE="https://github.com/CopterExpress/ros_led"
SRC_URI="https://github.com/CopterExpress/ros_led-release/archive/release/noetic/${PN}/0.0.11-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="( MIT BSD )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/led_msgs
	ros-noetic/message_generation
	ros-noetic/roscpp
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/ros_environment
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
