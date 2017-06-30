# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="sdsdddsdsds"
HOMEPAGE="http://ros.org/wiki/multi_interface_roam"
SRC_URI="https://github.com/TheDash/linux_networking-release/archive/release/indigo/multi_interface_roam/1.0.11-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="|| ( BSD LGPL-2 GPL-1 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/asmach
    ros-indigo/diagnostic_msgs
    ros-indigo/dynamic_reconfigure
    ros-indigo/ieee80211_channels
    ros-indigo/network_monitor_udp
    ros-indigo/pr2_msgs
    ros-indigo/rospy
    ros-indigo/std_msgs
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
