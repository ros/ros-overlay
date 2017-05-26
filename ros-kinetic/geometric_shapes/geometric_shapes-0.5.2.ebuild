# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This package contains generic definitions of geometric shapes and bodies."
HOMEPAGE="http://ros.org/wiki/geometric_shapes"
SRC_URI="https://github.com/ros-gbp/geometric_shapes-release/archive/release/kinetic/geometric_shapes/0.5.2-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/eigen_stl_containers
    ros-kinetic/random_numbers
    ros-kinetic/octomap
    ros-kinetic/visualization_msgs
    ros-kinetic/shape_msgs
    ros-kinetic/resource_retriever
    dev-cpp/eigen
    media-libs/qhull
    dev-libs/boost
    media-libs/assimp
    dev-libs/console_bridge
"
DEPEND="
    ros-kinetic/eigen_stl_containers
    ros-kinetic/random_numbers
    ros-kinetic/octomap
    ros-kinetic/visualization_msgs
    ros-kinetic/shape_msgs
    ros-kinetic/resource_retriever
    dev-cpp/eigen
    media-libs/qhull
    media-libs/assimp
    dev-libs/boost
    dev-libs/console_bridge
    virtual/pkgconfig
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
