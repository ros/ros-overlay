# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Wrapper around spdlog, providing nothing but a dependency on spdlog, on som[...]"
HOMEPAGE="https://github.com/gabime/spdlog"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/eloquent/${PN}/1.0.1-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="( Apache-2.0 MIT )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	dev-libs/spdlog
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
