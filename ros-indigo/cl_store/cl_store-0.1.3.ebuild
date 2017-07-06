# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'3rd party library: CL-STORE'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/cram_3rdparty-release/archive/release/indigo/cl_store/0.1.3-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	dev-lisp/sbcl
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

