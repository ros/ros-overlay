# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="KDL binding for tf2"
HOMEPAGE="http://ros.org/wiki/tf2"
SRC_URI="https://github.com/ros-gbp/geometry2-release/archive/release/indigo/${PN}/0.5.20-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-indigo/orocos_kdl
	ros-indigo/tf2
	ros-indigo/tf2_ros
	test? ( ros-indigo/rostest )
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/cmake_modules
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
