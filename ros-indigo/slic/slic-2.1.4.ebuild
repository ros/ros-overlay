# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="SLIC-Superpizel ROS Wrapper\
  This file contains the class elements of the[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/jsk_3rdparty-release/archive/release/indigo/slic/2.1.4-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	media-libs/opencv
"
DEPEND="${RDEPEND}
	ros-indigo/cmake_modules
	app-misc/ca-certificates
	dev-util/cmake
	dev-vcs/git
	dev-libs/openssl
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
