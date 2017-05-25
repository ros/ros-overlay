# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/srdfdom-release/archive/release/kinetic/srdfdom/0.4.2-1.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/libconsole-bridge-dev
    ros-kinetic/liburdfdom-headers-dev
    ros-kinetic/boost
    ros-kinetic/tinyxml
    ros-kinetic/urdfdom_py

"
DEPEND="${RDEPEND}
    ros-kinetic/liburdfdom-headers-dev
    ros-kinetic/urdf
    ros-kinetic/urdfdom_py
    ros-kinetic/cmake_modules
    ros-kinetic/tinyxml
    ros-kinetic/libconsole-bridge-dev
    ros-kinetic/boost

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
