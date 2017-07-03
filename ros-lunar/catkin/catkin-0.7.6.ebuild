# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Low-level build system macros and infrastructure for ROS."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/catkin-release/archive/release/lunar/catkin/0.7.6-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	dev-cpp/gtest
	dev-lang/python
	dev-python/catkin_pkg
	dev-python/empy
	dev-python/nose
"
DEPEND="${RDEPEND}
	dev-util/cmake
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

src_prepare() {
	cd ${P}
	EPATCH_SOURCE="${FILESDIR}" EPATCH_SUFFIX="patch" \
	EPATCH_FORCE="yes" epatch
	ros-cmake_src_prepare
}

src_configure() {
local sitedir="$(python_get_sitedir)"
	local mycmakeargs=(
		-DCMAKE_INSTALL_PREFIX=/${ROS_PREFIX}
		-DCMAKE_PREFIX_PATH=/${ROS_PREFIX}
		-DPYTHON_INSTALL_DIR=${sitedir#${EPREFIX}}/${ROS_PREFIX}
		-DCATKIN_BUILD_BINARY_PACKAGE=0
	)
	python_foreach_impl ros-cmake_src_configure_internal
}

src_compile() {
	gcc ${FILESDIR}/ros-python.c -o ${WORKDIR}/${P}/ros-python-lunar || die 'could not build ros-python!'
	ros-cmake_src_compile
}

src_install() {
	cd ${WORKDIR}/${P}
	mkdir -p ${D}/usr/bin
	cp ros-python-lunar ${D%/}/usr/bin || die 'could not install ros-python!'
	ros-cmake_src_install
}
