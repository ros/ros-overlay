# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Wrapper around yaml-cpp, it provides a fixed CMake module and an ExternalPr[...]"
HOMEPAGE="https://github.com/jbeder/yaml-cpp"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/galactic/${PN}/7.1.0-2.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="( Apache-2.0 MIT )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
