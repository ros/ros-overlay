# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Online Trajectory Generation. Real-time. Jerk-constrained. Time-optimal."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/pantor/${PN}-release/archive/release/galactic/${PN}/0.4.0-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	dev-util/cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
