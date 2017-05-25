# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/easymov/ros_peerjs-release/archive/release/kinetic/ros_peerjs/0.1.8-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/libxss1
    ros-kinetic/nodejs
    ros-kinetic/gtk2
    ros-kinetic/xvfb
    ros-kinetic/libgconf2
    ros-kinetic/libnss3-dev
    ros-kinetic/libxtst-dev
    ros-kinetic/libasound2-dev

"
DEPEND="${RDEPEND}
    ros-kinetic/npm
    ros-kinetic/git
    ros-kinetic/nodejs-legacy

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
