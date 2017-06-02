# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This package contains generic definitions of geometric shapes and bodies."
HOMEPAGE="http://ros.org/wiki/geometric_shapes"
SRC_URI="https://github.com/ros-gbp/geometric_shapes-release/archive/release/lunar/geometric_shapes/0.5.2-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-lunar/eigen_stl_containers
    ros-lunar/octomap
    ros-lunar/random_numbers
    ros-lunar/resource_retriever
    ros-lunar/shape_msgs
    ros-lunar/visualization_msgs
    media-libs/assimp
    dev-libs/boost
    dev-cpp/eigen
    dev-libs/console_bridge
    media-libs/qhull
"
DEPEND="${RDEPEND}
    dev-python/catkin
    ros-lunar/catkin
    media-libs/assimp
    virtual/pkgconfig
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/lunar"

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
    cd ../../work
    source /${ROS_PREFIX}/setup.bash
    export PYTHONPATH="/${ROS_PREFIX}/lib/python3.5/site-packages:${PYTHONPATH}"
    export PYTHONPATH="/${ROS_PREFIX}/lib64/python3.5/site-packages:${PYTHONPATH}"
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
