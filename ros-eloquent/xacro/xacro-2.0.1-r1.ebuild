# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Xacro \(XML Macros\)\
	Xacro is an XML macro language. With xacro, you c[...]"
HOMEPAGE="http://ros.org/wiki/xacro"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/eloquent/${PN}/2.0.1-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-eloquent/ament_index_python
	test? ( ros-eloquent/ament_cmake_pytest )
	test? ( ros-eloquent/ament_lint_auto )
	dev-python/pyyaml
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
