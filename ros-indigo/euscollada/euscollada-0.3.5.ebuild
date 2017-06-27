# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="euscollada"
HOMEPAGE="http://ros.org/wiki/euscollada"
SRC_URI="https://github.com/tork-a/jsk_model_tools-release/archive/release/indigo/euscollada/0.3.5-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/assimp_devel
    ros-indigo/collada_parser
    ros-indigo/collada_urdf
    ros-indigo/resource_retriever
    ros-indigo/roscpp
    ros-indigo/rospack
    ros-indigo/rostest
    ros-indigo/tf
    ros-indigo/urdf
    dev-libs/collada-dom
    media-libs/qhull
    dev-libs/urdfdom
    dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
    ros-indigo/catkin
    ros-indigo/cmake_modules
    ros-indigo/mk
    ros-indigo/rosboost_cfg
    ros-indigo/rosbuild
"

SLOT="0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/indigo"

src_unpack() {
    default
    mv *${P}* ${P}
}

src_configure() {
    append-cxxflags "-std=c++11"
    export DEST_SETUP_DIR="/${ROS_PREFIX}"
    local mycmakeargs=(
        -DCMAKE_INSTALL_PREFIX=${D}${ROS_PREFIX}
        -DCMAKE_PREFIX_PATH=/${ROS_PREFIX}
        -DPYTHON_INSTALL_DIR=lib64/python3.5/site-packages
        -DCATKIN_ENABLE_TESTING=OFF
        -DPYTHON_EXECUTABLE=/usr/bin/ros-python-indigo
        -DCATKIN_BUILD_BINARY_PACAKGE=1

     )
    cmake-utils_src_configure
}

src_install() {
    cd ${WORKDIR}/${P}_build
    make install || die
}
