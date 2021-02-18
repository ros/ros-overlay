# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_7,3_8} )

inherit ros-cmake

DESCRIPTION="Metapackage for iXblue INS driver"
HOMEPAGE="http://wiki.ros.org/ixblue_ins"
SRC_URI="https://github.com/ixblue/${PN}_stdbin_driver-release/archive/release/noetic/${PN}/0.1.5-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/ixblue_ins_driver
	ros-noetic/ixblue_ins_msgs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
