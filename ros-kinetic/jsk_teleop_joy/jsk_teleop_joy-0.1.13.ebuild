# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="jsk_teleop_joy"
HOMEPAGE="http://ros.org/wiki/jsk_teleop_joy"
SRC_URI="https://github.com/tork-a/jsk_control-release/archive/release/kinetic/jsk_teleop_joy/0.1.13-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/diagnostic_msgs
	ros-kinetic/diagnostic_updater
	ros-kinetic/image_view2
	ros-kinetic/interactive_markers
	ros-kinetic/joy_mouse
	ros-kinetic/jsk_footstep_msgs
	ros-kinetic/jsk_interactive_marker
	ros-kinetic/jsk_rviz_plugins
	ros-kinetic/ps3joy
	ros-kinetic/tf
	ros-kinetic/view_controller_msgs
	ros-kinetic/visualization_msgs
	dev-python/pygame
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

