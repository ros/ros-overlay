# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/euslisp-release/archive/release/kinetic/euslisp/9.23.0-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/xfonts-100dpi
    ros-kinetic/opengl
    ros-kinetic/libjpeg
    ros-kinetic/libx11-dev
    ros-kinetic/xfonts-75dpi
    ros-kinetic/libpq-dev
    ros-kinetic/libxext
    ros-kinetic/libpng12-dev

"
DEPEND="${RDEPEND}
    ros-kinetic/xfonts-100dpi
    ros-kinetic/opengl
    ros-kinetic/libjpeg
    ros-kinetic/mk
    ros-kinetic/libx11-dev
    ros-kinetic/xfonts-75dpi
    ros-kinetic/cmake_modules
    ros-kinetic/libpq-dev
    ros-kinetic/libxext
    ros-kinetic/libpng12-dev

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
