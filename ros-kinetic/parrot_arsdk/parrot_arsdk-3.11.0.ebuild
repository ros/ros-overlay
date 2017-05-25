# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/AutonomyLab/parrot_arsdk-release/archive/release/kinetic/parrot_arsdk/3.11.0-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="

"
DEPEND="${RDEPEND}
    ros-kinetic/unzip
    ros-kinetic/ffmpeg
    ros-kinetic/zlib
    ros-kinetic/yasm
    ros-kinetic/automake
    ros-kinetic/libavahi-core-dev
    ros-kinetic/libtool
    ros-kinetic/libavahi-client-dev
    ros-kinetic/libncurses-dev
    ros-kinetic/curl
    ros-kinetic/autoconf
    ros-kinetic/nasm

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
