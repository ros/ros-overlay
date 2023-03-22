# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Visualization launchers and helpers for Jackal."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/clearpath-gbp/jackal_desktop-release/archive/release/noetic/${PN}/0.4.1-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/jackal_description
	ros-noetic/joint_state_publisher
	ros-noetic/joint_state_publisher_gui
	ros-noetic/rqt_console
	ros-noetic/rqt_gui
	ros-noetic/rqt_robot_monitor
	ros-noetic/rviz
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/roslaunch
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
