# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="General concert functionality."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/rocon_concert-release/archive/release/indigo/concert_master/0.6.11-1.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/concert_conductor
    ros-indigo/concert_msgs
    ros-indigo/concert_schedulers
    ros-indigo/concert_service_manager
    ros-indigo/concert_software_farmer
    ros-indigo/rocon_console
    ros-indigo/rocon_gateway
    ros-indigo/rocon_hub
    ros-indigo/rocon_icons
    ros-indigo/rocon_interactions
    ros-indigo/rocon_master_info
    ros-indigo/rocon_python_comms
    ros-indigo/rocon_python_utils
    ros-indigo/rocon_std_msgs
    ros-indigo/rosbridge_server
    ros-indigo/rospy
    ros-indigo/zeroconf_avahi
"
DEPEND="${RDEPEND}
    ros-indigo/catkin
    dev-python/catkin_pkg
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
