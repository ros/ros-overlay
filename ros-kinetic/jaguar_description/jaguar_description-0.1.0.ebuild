# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="A robot description package for Dr Robot's Jaguar 4x4"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/gstavrinos/jaguar-release/archive/release/kinetic/jaguar_description/0.1.0-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/urdf
    ros-kinetic/tf
    ros-kinetic/roscpp
    ros-kinetic/xacro
"
DEPEND="
    ros-kinetic/urdf
    ros-kinetic/tf
    ros-kinetic/roscpp
    ros-kinetic/xacro
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
