# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The audio package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/openrobotics-gbp/talos_audio-release/archive/release/indigo/talos_audio/1.0.5-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/catkin
	ros-indigo/message_generation
	ros-indigo/message_runtime
	ros-indigo/roscpp
	ros-indigo/rospy
	ros-indigo/std_msgs
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
