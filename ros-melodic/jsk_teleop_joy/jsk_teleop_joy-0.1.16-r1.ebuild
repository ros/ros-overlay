# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="jsk_teleop_joy"
HOMEPAGE="http://ros.org/wiki/jsk_teleop_joy"
SRC_URI="https://github.com/tork-a/jsk_control-release/archive/release/melodic/${PN}/0.1.16-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/diagnostic_msgs
	ros-melodic/diagnostic_updater
	ros-melodic/image_view2
	ros-melodic/interactive_markers
	ros-melodic/joy_mouse
	ros-melodic/jsk_footstep_msgs
	ros-melodic/jsk_interactive_marker
	ros-melodic/jsk_rviz_plugins
	ros-melodic/ps3joy
	ros-melodic/tf
	ros-melodic/view_controller_msgs
	ros-melodic/visualization_msgs
	dev-python/pygame
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
