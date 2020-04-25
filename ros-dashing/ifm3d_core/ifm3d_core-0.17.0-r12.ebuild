# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Library and Utilities for working with ifm pmd-based 3D ToF Cameras"
HOMEPAGE="https://github.com/ifm/ifm3d"
SRC_URI="https://github.com/ifm/ifm3d-release/archive/release/dashing/${PN}/0.17.0-12.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-dashing/cv_bridge
	net-misc/curl
	dev-cpp/glog
	sci-libs/pcl
	dev-libs/xmlrpc-c
"
DEPEND="${RDEPEND}
	dev-libs/boost[python]
	dev-util/cmake
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
