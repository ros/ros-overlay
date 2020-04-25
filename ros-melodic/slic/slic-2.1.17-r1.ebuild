# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="SLIC-Superpizel ROS Wrapper\
  This file contains the class elements of the[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/${PN}/2.1.17-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="N/A"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	media-libs/opencv
"
DEPEND="${RDEPEND}
	ros-melodic/cmake_modules
	app-misc/ca-certificates
	dev-util/cmake
	dev-vcs/git
	dev-libs/openssl
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
