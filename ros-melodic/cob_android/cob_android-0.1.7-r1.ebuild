# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="cob_android package provides tools for android apps operation."
HOMEPAGE="http://ros.org/wiki/cob_android"
SRC_URI="https://github.com/ipa320/${PN}-release/archive/release/melodic/${PN}/0.1.7-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/cob_android_msgs
	ros-melodic/cob_android_resource_server
	ros-melodic/cob_android_script_server
	ros-melodic/cob_android_settings
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
