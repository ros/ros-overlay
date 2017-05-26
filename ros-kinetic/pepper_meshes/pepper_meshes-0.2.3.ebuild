# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="meshes for the Aldebaran Robotics Pepper"
HOMEPAGE="http://github.com/ros-naoqi/pepper_meshes/"
SRC_URI="https://github.com/ros-naoqi/pepper_meshes-release/archive/release/kinetic/pepper_meshes/0.2.3-2.tar.gz"

LICENSE="Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International Public License"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
"
DEPEND="
    dev-java/sun-jdk
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
