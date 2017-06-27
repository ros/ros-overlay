# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="Various 3rd party Common LISP packages for the CRAM framework."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/cram_3rdparty-release/archive/release/indigo/cram_3rdparty/0.1.3-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/alexandria
    ros-indigo/babel
    ros-indigo/cffi
    ros-indigo/cl_store
    ros-indigo/cl_utilities
    ros-indigo/fiveam
    ros-indigo/gsd
    ros-indigo/gsll
    ros-indigo/lisp_unit
    ros-indigo/split_sequence
    ros-indigo/synchronization_tools
    ros-indigo/trivial_features
    ros-indigo/trivial_garbage
    ros-indigo/trivial_gray_streams
    ros-indigo/yason
"
DEPEND="${RDEPEND}
    ros-indigo/catkin
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
