# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="ROS message definitions for gcloud_speech and relevant packages."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/CogRobRelease/gcloud_speech-release/archive/release/kinetic/${PN}/0.0.5-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/message_runtime
"
DEPEND="${RDEPEND}
	ros-kinetic/actionlib
	ros-kinetic/actionlib_msgs
	ros-kinetic/catkin
	ros-kinetic/message_generation
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
