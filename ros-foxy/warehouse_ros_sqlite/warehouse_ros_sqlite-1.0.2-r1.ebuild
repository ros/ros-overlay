# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Implementation of warehouse_ros for sqlite"
HOMEPAGE="http://ros.org/wiki/warehouse_ros"
SRC_URI="https://github.com/moveit/${PN}-release/archive/release/foxy/${PN}/1.0.2-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/class_loader
	ros-foxy/rclcpp
	ros-foxy/warehouse_ros
	test? ( ros-foxy/ament_cmake_copyright )
	test? ( ros-foxy/ament_cmake_gtest )
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
	test? ( ros-foxy/geometry_msgs )
	=dev-db/sqlite-3*
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	ros-foxy/sqlite3_vendor
	dev-libs/boost[python]
	dev-db/sqlite:3
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
