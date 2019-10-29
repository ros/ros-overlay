# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The rosbag_editor package"
HOMEPAGE="http://wiki.ros.org/rosbag_editor"
SRC_URI="https://github.com/facontidavide/${PN}-release/archive/release/kinetic/${PN}/0.4.1-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/rosbag
	ros-kinetic/rosbag_storage
	ros-kinetic/roscpp
	ros-kinetic/tf
	ros-kinetic/tf2_msgs
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
