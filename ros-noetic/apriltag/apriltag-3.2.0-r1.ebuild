# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="AprilTag detector library"
HOMEPAGE="https://april.eecs.umich.edu/software/apriltag.html"
SRC_URI="https://github.com/AprilRobotics/${PN}-release/archive/release/noetic/${PN}/3.2.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	test? ( media-libs/opencv )
"
DEPEND="${RDEPEND}
	dev-util/cmake
	dev-python/numpy
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
