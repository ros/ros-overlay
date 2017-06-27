# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="This package contains a ROS wrapper for OpenSlam's Gmapping. 
  The gmapping pac"
HOMEPAGE="http://ros.org/wiki/gmapping"
SRC_URI="https://github.com/ros-gbp/slam_gmapping-release/archive/release/indigo/gmapping/1.3.8-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="CC-BY-SA-3.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/nav_msgs
    ros-indigo/openslam_gmapping
    ros-indigo/roscpp
    ros-indigo/tf
"
DEPEND="${RDEPEND}
    ros-indigo/catkin
    ros-indigo/rostest
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
