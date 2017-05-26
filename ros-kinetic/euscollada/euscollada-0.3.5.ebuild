# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="euscollada"
HOMEPAGE="http://ros.org/wiki/euscollada"
SRC_URI="https://github.com/tork-a/jsk_model_tools-release/archive/release/kinetic/euscollada/0.3.5-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/rospack
    ros-kinetic/assimp_devel
    ros-kinetic/collada_urdf
    ros-kinetic/roscpp
    ros-kinetic/tf
    ros-kinetic/rostest
    ros-kinetic/urdf
    ros-kinetic/resource_retriever
    ros-kinetic/collada_parser
    dev-cpp/yaml-cpp
    media-libs/qhull
    media-libs/collada-dom
    dev-libs/urdfdom
"
DEPEND="
    ros-kinetic/rospack
    ros-kinetic/assimp_devel
    ros-kinetic/cmake_modules
    ros-kinetic/rosboost_cfg
    ros-kinetic/collada_urdf
    ros-kinetic/roscpp
    ros-kinetic/tf
    ros-kinetic/rosbuild
    ros-kinetic/mk
    ros-kinetic/urdf
    ros-kinetic/rostest
    ros-kinetic/resource_retriever
    ros-kinetic/collada_parser
    dev-cpp/yaml-cpp
    media-libs/qhull
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
