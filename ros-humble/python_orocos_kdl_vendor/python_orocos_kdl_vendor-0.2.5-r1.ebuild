# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Wrapper around PyKDL, providing nothing but a dependency on PyKDL on some s[...]"
HOMEPAGE="https://github.com/orocos/orocos_kinematics_dynamics"
SRC_URI="https://github.com/ros2-gbp/orocos_kdl_vendor-release/archive/release/humble/${PN}/0.2.5-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="( Apache-2.0 LGPL-2.1-or-later )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/orocos_kdl_vendor
	ros-humble/pybind11_vendor
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
	dev-python/python_orocos_kdl
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	ros-humble/ament_cmake_python
	ros-humble/python_cmake_module
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
