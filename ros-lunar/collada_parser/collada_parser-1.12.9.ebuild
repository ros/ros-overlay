# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This package contains a C++ parser for the Collada robot
    description format. The parser reads a Collada XML robot
    description, and creates a C++ URDF model. Although it is possible
    to directly use this parser when working with Collada robot
    descriptions, the preferred user API is found in the urdf package."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/robot_model-release/archive/release/lunar/collada_parser/1.12.9-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/roscpp
    ros-lunar/urdf_parser_plugin
    ros-lunar/class_loader
    dev-libs/urdfdom_headers
    media-libs/collada-dom
"
DEPEND="${RDEPEND}
    ros-lunar/urdf
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
    cd ../../work
    source /opt/ros/lunar/setup.bash
    catkin_make_isolated --install --install-space="${D}" || die
}

pkg_postinst() {
    cd ${D}
    cp -R lib* /opt/ros/lunar
    cp -R share /opt/ros/lunar
    cp -R bin /opt/ros/lunar
    cp -R include /opt/ros/lunar
}
