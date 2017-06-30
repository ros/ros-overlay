# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="mapviz"
HOMEPAGE="https://github.com/swri-robotics/mapviz"
SRC_URI="https://github.com/swri-robotics-gbp/mapviz-release/archive/release/indigo/mapviz/0.0.7-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/image_transport
    ros-indigo/marti_common_msgs
    ros-indigo/message_runtime
    ros-indigo/pluginlib
    ros-indigo/rosapi
    ros-indigo/roscpp
    ros-indigo/rqt_gui
    ros-indigo/rqt_gui_cpp
    ros-indigo/std_srvs
    ros-indigo/swri_transform_util
    ros-indigo/swri_yaml_util
    ros-indigo/tf
    media-libs/freeglut
    media-libs/glew
    media-libs/opencv
    dev-qt/qtcore:4
    dev-qt/qtopengl:4
    x11-libs/libXmu
    dev-qt/qtcore:4
"
DEPEND="${RDEPEND}
    ros-indigo/catkin
    ros-indigo/message_generation
    dev-qt/qtcore:4
    dev-qt/qtopengl:4
    virtual/pkgconfig
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
