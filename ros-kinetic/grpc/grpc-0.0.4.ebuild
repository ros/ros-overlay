# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Catkinized gRPC Package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/CogRobRelease/catkin_grpc-release/archive/release/kinetic/grpc/0.0.4-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	sys-devel/autoconf
	dev-vcs/git
	sys-devel/libtool
	net-misc/rsync
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
