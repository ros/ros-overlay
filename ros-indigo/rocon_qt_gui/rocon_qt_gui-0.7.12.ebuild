# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="Qt gui applications for interacting with the rocon framework."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/rocon_qt_gui-release/archive/release/indigo/rocon_qt_gui/0.7.12-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/concert_admin_app
    ros-indigo/concert_conductor_graph
    ros-indigo/concert_qt_make_a_map
    ros-indigo/concert_qt_map_annotation
    ros-indigo/concert_qt_service_info
    ros-indigo/concert_qt_teleop
    ros-indigo/rocon_gateway_graph
    ros-indigo/rocon_qt_app_manager
    ros-indigo/rocon_qt_library
    ros-indigo/rocon_qt_listener
    ros-indigo/rocon_qt_master_info
    ros-indigo/rocon_qt_teleop
    ros-indigo/rocon_remocon
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
