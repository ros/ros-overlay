# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Implementation of warehouse_ros for sqlite"
HOMEPAGE="http://ros.org/wiki/warehouse_ros"
SRC_URI="https://github.com/moveit/${PN}-release/archive/release/galactic/${PN}/1.0.2-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/class_loader
	ros-galactic/rclcpp
	ros-galactic/warehouse_ros
	test? ( ros-galactic/ament_cmake_copyright )
	test? ( ros-galactic/ament_cmake_gtest )
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
	test? ( ros-galactic/geometry_msgs )
	=dev-db/sqlite-3*
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	ros-galactic/sqlite3_vendor
	dev-libs/boost[python]
	dev-db/sqlite:3
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
