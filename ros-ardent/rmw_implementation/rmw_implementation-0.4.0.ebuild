# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The decision which ROS middleware implementation should be used for C++."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/ardent/${PN}/0.4.0-0.tar.gz -> ${PN}-ardent-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-ardent/poco_vendor
	ros-ardent/rmw_fastrtps_cpp
	ros-ardent/rmw_implementation_cmake
	ros-ardent/rmw_opensplice_cpp
	test? ( ros-ardent/ament_lint_auto )
	test? ( ros-ardent/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-ardent/ament_cmake
	ros-ardent/rcutils
	ros-ardent/rmw
"

SLOT="0"
ROS_DISTRO="ardent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
