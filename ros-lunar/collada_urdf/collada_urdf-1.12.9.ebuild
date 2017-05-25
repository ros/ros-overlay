# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This package contains a tool to convert Unified Robot Description Format (URDF) documents into COLLAborative Design Activity (COLLADA) documents.

    Implements robot-specific COLLADA extensions as defined by
    http://openrave.programmingvision.com/index.php/Started:COLLADA"
HOMEPAGE="http://ros.org/wiki/collada_urdf"
SRC_URI="https://github.com/ros-gbp/robot_model-release/archive/release/lunar/collada_urdf/1.12.9-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/urdf
    ros-lunar/roscpp
    ros-lunar/collada_parser
    ros-lunar/resource_retriever
    ros-lunar/angles
    ros-lunar/tf
    ros-lunar/geometric_shapes
    collada-dom
    liburdfdom-headers-dev
    assimp
    liburdfdom-dev
"
DEPEND="
    ros-lunar/urdf
    ros-lunar/roscpp
    ros-lunar/collada_parser
    ros-lunar/resource_retriever
    ros-lunar/cmake_modules
    ros-lunar/angles
    ros-lunar/tf
    ros-lunar/geometric_shapes
    collada-dom
    liburdfdom-headers-dev
    assimp-dev
    liburdfdom-dev
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
    source /opt/ros/lunar/setup.bash
    catkin_make_isolated --install --install-space="/opt/ros/lunar" || die
}
