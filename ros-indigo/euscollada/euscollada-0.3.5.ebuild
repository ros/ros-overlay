# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="euscollada"
HOMEPAGE="http://ros.org/wiki/euscollada"
SRC_URI="https://github.com/tork-a/jsk_model_tools-release/archive/release/indigo/euscollada/0.3.5-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/rostest
    ros-indigo/urdf
    ros-indigo/resource_retriever
    ros-indigo/collada_parser
    ros-indigo/tf
    ros-indigo/roscpp
    ros-indigo/assimp_devel
    ros-indigo/rospack
    ros-indigo/collada_urdf
    media-libs/collada-dom
    dev-cpp/yaml-cpp
    dev-libs/urdfdom
    media-libs/qhull
"
DEPEND="${RDEPEND}
    ros-indigo/mk
    ros-indigo/rosbuild
    ros-indigo/cmake_modules
    ros-indigo/rosboost_cfg
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
