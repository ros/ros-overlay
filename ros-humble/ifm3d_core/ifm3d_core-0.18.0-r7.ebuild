# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ros-cmake

DESCRIPTION="Library and Utilities for working with ifm pmd-based 3D ToF Cameras"
HOMEPAGE="https://github.com/ifm/ifm3d"
SRC_URI="https://github.com/ros2-gbp/ifm3d-release/archive/release/humble/${PN}/0.18.0-7.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/cv_bridge
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
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
