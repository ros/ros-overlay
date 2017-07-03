# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit ros-cmake
DESCRIPTION="This package contains a C++ parser for the Collada robot
	description format."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/collada_urdf-release/archive/release/lunar/collada_parser/1.12.10-2.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
	ros-lunar/class_loader
	ros-lunar/roscpp
	ros-lunar/urdf_parser_plugin
	dev-libs/collada-dom
	dev-libs/urdfdom_headers
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/urdf
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

