# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://ros.org/wiki/geometric_shapes"
SRC_URI="https://github.com/ros-gbp/geometric_shapes-release/archive/release/kinetic/geometric_shapes/0.5.2-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/shape_msgs
    ros-kinetic/eigen
    ros-kinetic/libqhull
    ros-kinetic/resource_retriever
    ros-kinetic/assimp
    ros-kinetic/octomap
    ros-kinetic/random_numbers
    ros-kinetic/eigen_stl_containers
    ros-kinetic/visualization_msgs
    ros-kinetic/libconsole-bridge-dev
    ros-kinetic/boost

"
DEPEND="${RDEPEND}
    ros-kinetic/shape_msgs
    ros-kinetic/eigen
    ros-kinetic/libqhull
    ros-kinetic/resource_retriever
    ros-kinetic/assimp-dev
    ros-kinetic/octomap
    ros-kinetic/random_numbers
    ros-kinetic/eigen_stl_containers
    ros-kinetic/visualization_msgs
    ros-kinetic/libconsole-bridge-dev
    ros-kinetic/boost
    ros-kinetic/pkg-config

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
