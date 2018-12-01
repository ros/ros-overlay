# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Common AWS SDK utilities, intended for use by ROS packages using the AWS SDK"
HOMEPAGE="http://wiki.ros.org/aws_common"
SRC_URI="https://github.com/aws-gbp/${PN}-release/archive/release/kinetic/${PN}/1.0.0-6.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	net-misc/curl
	dev-libs/openssl
	dev-libs/ossp-uuid
	sys-libs/zlib
	test? ( dev-cpp/gtest )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/ros_environment
	dev-util/cmake
	dev-vcs/git
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
