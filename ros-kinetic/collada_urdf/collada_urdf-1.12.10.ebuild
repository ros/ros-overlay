# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This package contains a tool to convert Unified Robot Description Format (URDF) documents into COLLAborative Design Activity (COLLADA) documents.

    Implements robot-specific COLLADA extensions as defined by
    http://openrave.programmingvision.com/index.php/Started:COLLADA"
HOMEPAGE="http://ros.org/wiki/collada_urdf"
SRC_URI="https://github.com/ros-gbp/collada_urdf-release/archive/release/kinetic/collada_urdf/1.12.10-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/angles
    ros-kinetic/roscpp
    ros-kinetic/urdf
    ros-kinetic/tf
    ros-kinetic/geometric_shapes
    ros-kinetic/resource_retriever
    ros-kinetic/collada_parser
    dev-libs/urdfdom_headers
    media-libs/assimp
    media-libs/collada-dom
    dev-libs/urdfdom
"
DEPEND="
    ros-kinetic/cmake_modules
    ros-kinetic/angles
    ros-kinetic/roscpp
    ros-kinetic/urdf
    ros-kinetic/tf
    ros-kinetic/geometric_shapes
    ros-kinetic/resource_retriever
    ros-kinetic/collada_parser
    media-libs/assimp
    dev-libs/urdfdom_headers
    media-libs/collada-dom
    dev-libs/urdfdom
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
