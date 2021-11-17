# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="cob_android package provides tools for android apps operation."
HOMEPAGE="http://ros.org/wiki/cob_android"
SRC_URI="https://github.com/ipa320/${PN}-release/archive/release/noetic/${PN}/0.1.9-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/cob_android_msgs
	ros-noetic/cob_android_resource_server
	ros-noetic/cob_android_script_server
	ros-noetic/cob_android_settings
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
