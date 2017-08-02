# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="cob_android package provides tools for android apps operation."
HOMEPAGE="http://ros.org/wiki/cob_android"
SRC_URI="https://github.com/ipa320/cob_android-release/archive/release/kinetic/cob_android/0.1.3-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cob_android_msgs
	ros-kinetic/cob_android_resource_server
	ros-kinetic/cob_android_script_server
	ros-kinetic/cob_android_settings
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

