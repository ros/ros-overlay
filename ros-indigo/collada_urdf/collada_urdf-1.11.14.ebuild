# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This package contains a tool to convert Unified Robot Description Format (URDF) "
HOMEPAGE="http://ros.org/wiki/collada_urdf"
SRC_URI="https://github.com/ros-gbp/collada_urdf-release/archive/release/indigo/collada_urdf/1.11.14-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/roscpp
    ros-indigo/angles
    ros-indigo/geometric_shapes
    ros-indigo/tf
    ros-indigo/resource_retriever
    ros-indigo/urdf
    ros-indigo/collada_parser
    dev-libs/urdfdom_headers
    media-libs/collada-dom
    dev-libs/urdfdom
    media-libs/assimp
"
DEPEND="${RDEPEND}
    ros-indigo/cmake_modules
    media-libs/assimp
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/indigo"

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
    source /${ROS_PREFIX}/setup.bash
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
