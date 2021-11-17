# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The iXblue_ins_driver package"
HOMEPAGE="http://wiki.ros.org/ixblue_ins_driver"
SRC_URI="https://github.com/ixblue/ixblue_ins_stdbin_driver-release/archive/release/noetic/${PN}/0.1.5-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/diagnostic_msgs
	ros-noetic/diagnostic_updater
	ros-noetic/ixblue_ins_msgs
	ros-noetic/ixblue_stdbin_decoder
	ros-noetic/nav_msgs
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	dev-libs/boost
	dev-libs/boost
	test? ( dev-libs/boost )
	test? ( dev-libs/boost[threads] )
	test? ( net-libs/libpcap )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
