# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Example qt programs, generated from code similar to that used by the \
	[...]"
HOMEPAGE="https://github.com/stonier/qt_ros/issues"
SRC_URI="https://github.com/yujinrobot-release/qt_ros-release/archive/release/kinetic/${PN}/0.2.10-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/message_runtime
	ros-kinetic/qt_build
	ros-kinetic/roscpp
	ros-kinetic/std_msgs
	dev-qt/qtcore:4
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
