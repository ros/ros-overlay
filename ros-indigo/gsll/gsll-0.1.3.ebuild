# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="3rd party library: GSLL a GSL wrapper for common lisp"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/cram_3rdparty-release/archive/release/indigo/gsll/0.1.3-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="GPL-1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cffi
	ros-indigo/cl_utilities
	ros-indigo/gsd
	ros-indigo/trivial_garbage
	sci-libs/gsl
	dev-lisp/sbcl
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
