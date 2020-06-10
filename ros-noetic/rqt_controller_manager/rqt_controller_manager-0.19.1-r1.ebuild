# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Graphical frontend for interacting with the controller manager."
HOMEPAGE="http://ros.org/wiki/rqt_controller_manager"
SRC_URI="https://github.com/ros-gbp/ros_control-release/archive/release/noetic/${PN}/0.19.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/controller_manager_msgs
	ros-noetic/rospy
	ros-noetic/rqt_gui
	ros-noetic/rqt_gui_py
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	dev-python/setuptools
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
