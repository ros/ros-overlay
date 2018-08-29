# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Precisely stamped URG driver for ROS"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/seqsense/${PN}-release/archive/release/lunar/${PN}/0.0.2-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-lunar/roscpp
	ros-lunar/sensor_msgs
	test? ( ros-lunar/roslint )
	test? ( ros-lunar/rostest )
	test? ( ros-lunar/rosunit )
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
