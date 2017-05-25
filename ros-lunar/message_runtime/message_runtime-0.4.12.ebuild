# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the LGPL-v2 license

EAPI=6

DESCRIPTION="Package modeling the run-time dependencies for language bindings of messages."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/message_runtime-release/archive/release/lunar/message_runtime/0.4.12-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
	ros-lunar/roscpp_serialization
	ros-lunar/rostime
	ros-lunar/roscpp_traits
	ros-lunar/cpp_common
	ros-lunar/genpy
"
DEPEND="${RDEPEND}
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo

src_unpack() {
	default
	mv *${P}* ${P}
}

src_configure() {
	append-cxxflags "-std=c++14"
	mkdir ${WORKDIR}/src
	cp -R ${WORKDIR}/${P} ${WORKDIR}/src/${P}
}

src_compile() {
	echo ""
}

src_install() {
	echo ""
}

pkg_postinst() {
	cd ../work
	source /opt/ros/lunar/setup.bash
	catkin_make_isolated --install --install-space="/opt/ros/lunar" || die
}
