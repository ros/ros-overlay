# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The microstrain_inertial_rqt package provides several RQT widgets to view t[...]"
HOMEPAGE="https://github.com/LORD-MicroStrain/microstrain_inertial"
SRC_URI="https://github.com/LORD-MicroStrain/microstrain_inertial-release/archive/release/noetic/${PN}/4.3.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/geometry_msgs
	ros-noetic/microstrain_inertial_msgs
	ros-noetic/nav_msgs
	ros-noetic/rospy
	ros-noetic/rqt_gui
	ros-noetic/rqt_gui_py
	ros-noetic/std_msgs
	ros-noetic/tf
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
