# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Package containing the Python client."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/ardent/${PN}/0.4.0-0.tar.gz -> ${PN}-ardent-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-ardent/ament_index_python
	ros-ardent/rcl
	ros-ardent/rmw_implementation
	test? ( ros-ardent/ament_cmake_pytest )
	test? ( ros-ardent/ament_lint_auto )
	test? ( ros-ardent/ament_lint_common )
	test? ( ros-ardent/rcl_interfaces )
	test? ( ros-ardent/rosidl_generator_py )
	test? ( ros-ardent/std_msgs )
"
DEPEND="${RDEPEND}
	ros-ardent/ament_cmake
	ros-ardent/python_cmake_module
	ros-ardent/rcutils
	ros-ardent/rmw_implementation_cmake
"

SLOT="0"
ROS_DISTRO="ardent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
