# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-python

DESCRIPTION="The ability to check code against the style conventions in PEP 8 and\
	g[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/ament_lint-release/archive/release/galactic/${PN}/0.10.6-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	dev-python/pycodestyle
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
