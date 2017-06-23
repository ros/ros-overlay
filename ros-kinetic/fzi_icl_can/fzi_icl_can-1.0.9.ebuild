# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="The fzi_icl_can package"
HOMEPAGE="http://wiki.ros.org/fzi_icl_can"
SRC_URI="https://github.com/fzi-forschungszentrum-informatik/fzi_icl_can-release/archive/release/kinetic/fzi_icl_can/1.0.9-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="LGPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-kinetic/catkin
    ros-kinetic/fzi_icl_core
    dev-libs/popt
    sys-kernel/linux-headers
"
DEPEND="${RDEPEND}
    dev-util/cmake
    net-misc/wget
"

SLOT="0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/kinetic"

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
        -DPYTHON_EXECUTABLE=/usr/bin/ros-python-kinetic
        -DCATKIN_BUILD_BINARY_PACKAGE=1
     )
    cmake-utils_src_configure
}

src_install() {
    cd ${WORKDIR}/${P}_build
    make install || die
}
