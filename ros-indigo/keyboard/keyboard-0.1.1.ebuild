# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="publishes keyboard key presses"
HOMEPAGE="http://wiki.ros.org/keyboard"
SRC_URI="https://github.com/lrse-ros-release/keyboard-release/archive/release/indigo/keyboard/0.1.1-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="GPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/message_runtime
	ros-indigo/roscpp
	ros-indigo/std_msgs
	media-libs/libsdl
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
	dev-lang/ruby
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
