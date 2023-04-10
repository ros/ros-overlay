# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="DepthAI core is a C++ library which comes with firmware and an API to inter[...]"
HOMEPAGE="https://www.luxonis.com/"
SRC_URI="https://github.com/luxonis/${PN}-core-release/archive/release/humble/${PN}/2.20.2-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	media-libs/opencv
	virtual/libusb:1
	dev-cpp/nlohmann_json
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	ros-humble/ros_environment
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
