# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/collada_urdf-release/archive/release/kinetic/collada_parser/1.12.10-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/collada-dom
    ros-kinetic/liburdfdom-headers-dev
    ros-kinetic/roscpp
    ros-kinetic/class_loader
    ros-kinetic/urdf_parser_plugin

"
DEPEND="${RDEPEND}
    ros-kinetic/liburdfdom-headers-dev
    ros-kinetic/roscpp
    ros-kinetic/collada-dom
    ros-kinetic/urdf
    ros-kinetic/urdf_parser_plugin
    ros-kinetic/class_loader

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
