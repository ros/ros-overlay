# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://ros.org/wiki/euscollada"
SRC_URI="https://github.com/tork-a/jsk_model_tools-release/archive/release/kinetic/euscollada/0.3.5-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/libqhull
    ros-kinetic/rospack
    ros-kinetic/roscpp
    ros-kinetic/collada_parser
    ros-kinetic/collada-dom
    ros-kinetic/urdf
    ros-kinetic/resource_retriever
    ros-kinetic/assimp_devel
    ros-kinetic/collada_urdf
    ros-kinetic/rostest
    ros-kinetic/yaml-cpp
    ros-kinetic/tf
    ros-kinetic/liburdfdom-dev

"
DEPEND="${RDEPEND}
    ros-kinetic/rosbuild
    ros-kinetic/rosboost_cfg
    ros-kinetic/libqhull
    ros-kinetic/rospack
    ros-kinetic/roscpp
    ros-kinetic/collada_parser
    ros-kinetic/collada_urdf
    ros-kinetic/collada-dom
    ros-kinetic/urdf
    ros-kinetic/resource_retriever
    ros-kinetic/mk
    ros-kinetic/assimp_devel
    ros-kinetic/cmake_modules
    ros-kinetic/rostest
    ros-kinetic/yaml-cpp
    ros-kinetic/tf
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
