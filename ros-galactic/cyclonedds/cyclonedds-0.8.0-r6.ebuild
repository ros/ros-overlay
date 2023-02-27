# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Eclipse Cyclone DDS is a very performant and robust open-source DDS impleme[...]"
HOMEPAGE="https://projects.eclipse.org/projects/iot.cyclonedds"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/galactic/${PN}/0.8.0-6.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="( EPL-2.0 Eclipse-Distribution-License-1.0 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/iceoryx_binding_c
	ros-galactic/iceoryx_posh
	ros-galactic/iceoryx_utils
	dev-libs/openssl
	test? ( dev-util/cunit )
"
DEPEND="${RDEPEND}
	sys-devel/bison
	dev-util/cmake
	dev-libs/openssl
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
