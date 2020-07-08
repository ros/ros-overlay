# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-python

DESCRIPTION="Providing common API for ament linter packages."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/foxy/${PN}/0.9.5-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
