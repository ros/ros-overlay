# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://ros.org/wiki/collada_urdf"
SRC_URI="https://github.com/ros-gbp/collada_urdf-release/archive/release/kinetic/collada_urdf/1.12.10-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/urdf
    ros-kinetic/roscpp
    ros-kinetic/collada_parser
    ros-kinetic/collada-dom
    ros-kinetic/liburdfdom-headers-dev
    ros-kinetic/resource_retriever
    ros-kinetic/assimp
    ros-kinetic/angles
    ros-kinetic/tf
    ros-kinetic/geometric_shapes
    ros-kinetic/liburdfdom-dev

"
DEPEND="${RDEPEND}
    ros-kinetic/urdf
    ros-kinetic/roscpp
    ros-kinetic/collada_parser
    ros-kinetic/collada-dom
    ros-kinetic/liburdfdom-headers-dev
    ros-kinetic/resource_retriever
    ros-kinetic/assimp-dev
    ros-kinetic/cmake_modules
    ros-kinetic/angles
    ros-kinetic/tf
    ros-kinetic/geometric_shapes
    ros-kinetic/liburdfdom-dev

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
