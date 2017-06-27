# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="Top-level ROS launch scripts for the Building-Wide Intelligence
    (BWI) projec"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/utexas-bwi-gbp/bwi-release/archive/release/indigo/bwi_launch/0.3.3-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/bwi_kr_execution
    ros-indigo/bwi_msgs
    ros-indigo/bwi_tools
    ros-indigo/multi_level_map_server
    ros-indigo/multi_level_map_utils
    ros-indigo/segbot_bringup
    ros-indigo/segbot_gazebo
    ros-indigo/segbot_gui
    ros-indigo/segbot_logical_translator
    ros-indigo/segbot_navigation
    ros-indigo/segbot_simulation_apps
    ros-indigo/utexas_gdc
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
