# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This package contains generic definitions of geometric shapes and bodies."
HOMEPAGE="http://ros.org/wiki/geometric_shapes"
SRC_URI="https://github.com/ros-gbp/geometric_shapes-release/archive/release/lunar/geometric_shapes/0.5.2-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/shape_msgs
    ros-lunar/resource_retriever
    ros-lunar/octomap
    ros-lunar/random_numbers
    ros-lunar/eigen_stl_containers
    ros-lunar/visualization_msgs
    eigen
    libqhull
    assimp
    libconsole-bridge-dev
    boost
"
DEPEND="
    ros-lunar/shape_msgs
    ros-lunar/resource_retriever
    ros-lunar/octomap
    ros-lunar/random_numbers
    ros-lunar/eigen_stl_containers
    ros-lunar/visualization_msgs
    eigen
    libqhull
    assimp-dev
    libconsole-bridge-dev
    boost
    pkg-config
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
