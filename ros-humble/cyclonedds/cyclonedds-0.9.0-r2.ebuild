# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Eclipse Cyclone DDS is a very performant and robust open-source DDS impleme[...]"
HOMEPAGE="https://projects.eclipse.org/projects/iot.cyclonedds"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/0.9.0-2.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="( EPL-2.0 Eclipse-Distribution-License-1.0 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/iceoryx_binding_c
	ros-humble/iceoryx_hoofs
	ros-humble/iceoryx_posh
	dev-libs/openssl
	test? ( dev-util/cunit )
"
DEPEND="${RDEPEND}
	dev-util/cmake
	dev-libs/openssl
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
