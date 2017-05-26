# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This package contains the source code for testing and comparing trac_ik"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/traclabs/trac_ik-release/archive/release/kinetic/trac_ik_examples/1.4.5-1.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/trac_ik_lib
    ros-kinetic/xacro
    ros-kinetic/orocos_kdl
    ros-kinetic/pr2_description
    dev-libs/boost
"
DEPEND="
    ros-kinetic/trac_ik_lib
    ros-kinetic/orocos_kdl
    dev-libs/boost
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
