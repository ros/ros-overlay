# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/traclabs/trac_ik-release/archive/release/kinetic/trac_ik_lib/1.4.5-1.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/libnlopt-dev
    ros-kinetic/roscpp
    ros-kinetic/urdf
    ros-kinetic/kdl_parser
    ros-kinetic/libnlopt0
    ros-kinetic/boost

"
DEPEND="${RDEPEND}
    ros-kinetic/libnlopt-dev
    ros-kinetic/eigen
    ros-kinetic/urdf
    ros-kinetic/kdl_parser
    ros-kinetic/cmake_modules
    ros-kinetic/roscpp
    ros-kinetic/boost
    ros-kinetic/pkg-config

"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo

src_unpack() {
    default
    mv *${P}* ${P}
}

src_configure() {
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
    source /opt/ros/kinetic/setup.bash
    catkin_make_isolated --install --install-space="/opt/ros/kinetic" || die
}
