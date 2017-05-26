# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Library to compute SIFT features"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/libsiftfast/2.0.20-0.tar.gz"

LICENSE="LGPL"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    dev-python/numpy
    dev-libs/boost
"
DEPEND="
    ros-kinetic/rospack
    ros-kinetic/roslib
    ros-kinetic/mk
    ros-kinetic/rosboost_cfg
    dev-libs/boost
    dev-python/numpy
    dev-vcs/subversion
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo

src_unpack() {
    wget -O ${P}.tar.gz ${SRC_URI}
    tar -xf ${P}.tar.gz
    rm -f ${P}.tar.gz
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
