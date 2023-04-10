# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The iXblue_ins_driver package"
HOMEPAGE="http://wiki.ros.org/ixblue_ins_driver"
SRC_URI="https://github.com/ixblue/ixblue_ins_stdbin_driver-release/archive/release/melodic/${PN}/0.1.5-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/diagnostic_msgs
	ros-melodic/diagnostic_updater
	ros-melodic/ixblue_ins_msgs
	ros-melodic/ixblue_stdbin_decoder
	ros-melodic/nav_msgs
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	dev-libs/boost
	dev-libs/boost
	test? ( dev-libs/boost )
	test? ( dev-libs/boost[threads] )
	test? ( net-libs/libpcap )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
