# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="The vda5050_msgs package contains the datatypes \(json objects\) specified [...]"
HOMEPAGE="https://www.vda.de/dam/vda/publications/2019/Logistik/VDA5050.pdf"
SRC_URI="https://github.com/inorbit-ai/ros_amr_interop-release/archive/release/galactic/${PN}/1.1.1-2.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/rosidl_default_runtime
	ros-galactic/std_msgs
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	ros-galactic/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
