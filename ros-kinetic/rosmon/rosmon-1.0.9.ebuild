# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Node launcher and monitor for ROS. rosmon is a replacement\
\	\	for the ros[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/xqms/${PN}-release/archive/release/kinetic/${PN}/1.0.9-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/cmake_modules
	ros-kinetic/message_generation
	ros-kinetic/rosbash
	ros-kinetic/roscpp
	ros-kinetic/roslib
	ros-kinetic/rospack
	ros-kinetic/rqt_gui
	ros-kinetic/rqt_gui_cpp
	ros-kinetic/std_msgs
	test? ( ros-kinetic/catch_ros )
	test? ( ros-kinetic/rostest )
	dev-libs/boost
	sys-libs/ncurses
	dev-cpp/yaml-cpp
	test? ( dev-python/rospkg )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	dev-lang/python
	dev-qt/qtcore:5
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
