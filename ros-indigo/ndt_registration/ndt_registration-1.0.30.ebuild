# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="Contains a new implementation of 3D NDT registration. 
    Used to find the rela"
HOMEPAGE="http://ros.org/wiki/ndt_registration"
SRC_URI="https://github.com/tstoyanov/perception_oru-release/archive/release/indigo/ndt_registration/1.0.30-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/ndt_map
    ros-indigo/pcl_ros
    ros-indigo/tf
    ros-indigo/tf_conversions
    sci-libs/pcl
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
