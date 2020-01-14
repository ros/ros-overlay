# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Dock driving library for Kobuki. Users owning a docking station for Kobuki\[...]"
HOMEPAGE="https://index.ros.org/k/kobuki_dock_drive/github-kobuki-base-kobuki_dock_drive"
SRC_URI="https://github.com/stonier/kobuki_core-release/archive/release/eloquent/${PN}/1.0.0-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-eloquent/ecl_geometry
	ros-eloquent/ecl_linear_algebra
	ros-eloquent/ecl_threads
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake_ros
	ros-eloquent/ecl_build
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
