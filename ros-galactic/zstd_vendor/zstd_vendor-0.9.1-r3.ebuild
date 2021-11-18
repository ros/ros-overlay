# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Zstd compression vendor package, providing a dependency for Zstd."
HOMEPAGE="https://facebook.github.io/zstd/"
SRC_URI="https://github.com/ros2-gbp/rosbag2-release/archive/release/galactic/${PN}/0.9.1-3.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="( Apache-2.0 BSD )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	app-arch/zstd
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
