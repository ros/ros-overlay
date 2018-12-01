# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="AWS Kinesis stream management library intended for use with the Kinesis Vid[...]"
HOMEPAGE="http://wiki.ros.org/kinesis_manager"
SRC_URI="https://github.com/aws-gbp/${PN}-release/archive/release/kinetic/${PN}/1.0.0-2.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/aws_common
	dev-libs/boost
	net-misc/curl
	dev-libs/openssl
	test? ( dev-cpp/gtest )
"
DEPEND="${RDEPEND}
	dev-util/cmake
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
