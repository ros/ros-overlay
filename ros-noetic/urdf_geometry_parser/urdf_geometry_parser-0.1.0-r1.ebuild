# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Extract geometry value of a vehicle from urdf."
HOMEPAGE="http://ros.org/wiki/urdf_geometry_parser"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/noetic/${PN}/0.1.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/roscpp
	ros-noetic/urdf
	test? ( ros-noetic/rostest )
	test? ( ros-noetic/xacro )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
