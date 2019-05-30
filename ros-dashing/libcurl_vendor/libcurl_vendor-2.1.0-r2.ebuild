# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Wrapper around libcurl, it provides a fixed CMake module and an ExternalPro[...]"
HOMEPAGE="https://github.com/curl/curl"
SRC_URI="https://github.com/ros2-gbp/resource_retriever-release/archive/release/dashing/${PN}/2.1.0-2.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="( Apache-2.0 MIT )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	net-misc/curl
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
