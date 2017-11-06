# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Wrapper for the Qsopt linear programming solver. The code was obtained from http"
HOMEPAGE="http://www.math.uwaterloo.ca/~bico/qsopt/index.html"
SRC_URI="https://github.com/ipa320/cob_extern-release/archive/release/indigo/libqsopt/0.6.11-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="( CC-BY-SA-3.0 CC-BY-SA-3.0 CC-BY-SA-3.0 CC-BY-SA-3.0 CC-BY-SA-3.0 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	app-arch/dpkg
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

