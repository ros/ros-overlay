# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="jsk_teleop_joy"
HOMEPAGE="http://ros.org/wiki/jsk_teleop_joy"
SRC_URI="https://github.com/tork-a/jsk_control-release/archive/release/indigo/jsk_teleop_joy/0.1.13-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/diagnostic_msgs
	ros-indigo/diagnostic_updater
	ros-indigo/image_view2
	ros-indigo/interactive_markers
	ros-indigo/joy_mouse
	ros-indigo/jsk_footstep_msgs
	ros-indigo/jsk_interactive_marker
	ros-indigo/jsk_rviz_plugins
	ros-indigo/ps3joy
	ros-indigo/tf
	ros-indigo/view_controller_msgs
	ros-indigo/visualization_msgs
	dev-python/pygame
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

