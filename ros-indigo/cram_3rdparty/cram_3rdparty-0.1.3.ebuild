# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Various 3rd party Common LISP packages for the CRAM framework"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/cram_3rdparty-release/archive/release/indigo/cram_3rdparty/0.1.3-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/alexandria
	ros-indigo/babel
	ros-indigo/cffi
	ros-indigo/cl_store
	ros-indigo/cl_utilities
	ros-indigo/fiveam
	ros-indigo/gsd
	ros-indigo/gsll
	ros-indigo/lisp_unit
	ros-indigo/split_sequence
	ros-indigo/synchronization_tools
	ros-indigo/trivial_features
	ros-indigo/trivial_garbage
	ros-indigo/trivial_gray_streams
	ros-indigo/yason
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

