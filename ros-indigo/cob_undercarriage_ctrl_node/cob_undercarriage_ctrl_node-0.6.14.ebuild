# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="cob_undercarriage_ctrl_node implements a controller for the omnidirectional base"
HOMEPAGE="http://ros.org/wiki/cob_undercarriage_ctrl_node"
SRC_URI="https://github.com/ipa320/cob_control-release/archive/release/indigo/cob_undercarriage_ctrl_node/0.6.14-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/cob_msgs
    ros-indigo/cob_omni_drive_controller
    ros-indigo/control_msgs
    ros-indigo/diagnostic_msgs
    ros-indigo/diagnostic_updater
    ros-indigo/geometry_msgs
    ros-indigo/nav_msgs
    ros-indigo/roscpp
    ros-indigo/tf
    ros-indigo/urdf
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
