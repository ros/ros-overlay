# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="This package wraps the libntcan to use it as a ros dependency."
HOMEPAGE="http://www.esd-electronics.com"
SRC_URI="https://github.com/ipa320/cob_extern-release/archive/release/noetic/${PN}/0.6.19-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="proprietary"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	app-arch/dpkg
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
