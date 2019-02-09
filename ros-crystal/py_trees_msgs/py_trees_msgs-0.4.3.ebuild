# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Messages used by py_trees_ros and some extras for the mock demos/tests."
HOMEPAGE="http://ros.org/wiki/py_trees_msgs"
SRC_URI="https://github.com/stonier/${PN}-release/archive/release/crystal/${PN}/0.4.3-0.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-crystal/rosidl_default_runtime
	ros-crystal/std_msgs
	ros-crystal/unique_identifier_msgs
	test? ( ros-crystal/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-crystal/ament_cmake
	ros-crystal/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
