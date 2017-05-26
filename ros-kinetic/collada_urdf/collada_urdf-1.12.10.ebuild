# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This package contains a tool to convert Unified Robot Description Format (URDF) documents into COLLAborative Design Activity (COLLADA) documents.

    Implements robot-specific COLLADA extensions as defined by
    http://openrave.programmingvision.com/index.php/Started:COLLADA"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/collada_urdf-release/archive/release/kinetic/collada_urdf/1.12.10-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/urdf
    ros-kinetic/roscpp
    ros-kinetic/collada_parser
    ros-kinetic/resource_retriever
    ros-kinetic/angles
    ros-kinetic/tf
    ros-kinetic/geometric_shapes
    media-libs/collada-dom
    dev-libs/urdfdom_headers
    media-libs/assimp
    dev-libs/urdfdom
"
DEPEND="${RDEPEND}
    ros-kinetic/cmake_modules
    media-libs/assimp
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/kinetic"

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
    source /opt/ros/kinetic/setup.bash
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}"
    rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
    rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
}
