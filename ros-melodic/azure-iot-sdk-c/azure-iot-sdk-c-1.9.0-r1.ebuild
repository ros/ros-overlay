# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Azure IoT C SDKs and Libraries"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/nobleo/${PN}-release/archive/release/melodic/${PN}/1.9.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	net-misc/curl
	dev-libs/openssl
	dev-libs/ossp-uuid
"
DEPEND="${RDEPEND}
	dev-util/cmake
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
