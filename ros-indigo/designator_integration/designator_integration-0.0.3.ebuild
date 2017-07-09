# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Metapackage grouping the packages C++ and Common LISP library
	packages for R'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/code-iai-release/designator_integration-release/archive/release/indigo/designator_integration/0.0.3-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/designator_integration_cpp
	ros-indigo/designator_integration_lisp
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

