# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Catkinized ROS packaging of the OpenKarto library"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/open_karto-release/archive/release/kinetic/open_karto/1.1.4-0.tar.gz"

LICENSE="LGPLv3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    dev-libs/boost
"
DEPEND="
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
