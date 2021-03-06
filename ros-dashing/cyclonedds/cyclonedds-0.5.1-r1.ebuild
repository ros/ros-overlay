# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Eclipse Cyclone DDS is a very performant and robust open-source DDS impleme[...]"
HOMEPAGE="https://projects.eclipse.org/projects/iot.cyclonedds"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/dashing/${PN}/0.5.1-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="Eclipse Public License 2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	dev-libs/openssl
	test? ( dev-util/cunit )
"
DEPEND="${RDEPEND}
	dev-util/cmake
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
