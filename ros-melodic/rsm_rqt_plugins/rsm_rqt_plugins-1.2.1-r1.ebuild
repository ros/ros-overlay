# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The rsm_rqt_plugins package includes the Robot\
\	\	Statemachine GUI plugin[...]"
HOMEPAGE="https://github.com/MarcoStb1993/robot_statemachine"
SRC_URI="https://github.com/MarcoStb1993/robot_statemachine-release/archive/release/melodic/${PN}/1.2.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/cmake_modules
	ros-melodic/roscpp
	ros-melodic/rqt_gui
	ros-melodic/rqt_gui_cpp
	ros-melodic/rsm_msgs
	ros-melodic/std_msgs
	ros-melodic/std_srvs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
