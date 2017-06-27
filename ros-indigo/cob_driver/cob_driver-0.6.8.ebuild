# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="The cob_driver stack includes packages that provide access to the Care-O-bot har"
HOMEPAGE="http://ros.org/wiki/cob_driver"
SRC_URI="https://github.com/ipa320/cob_driver-release/archive/release/indigo/cob_driver/0.6.8-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/cob_base_drive_chain
    ros-indigo/cob_bms_driver
    ros-indigo/cob_camera_sensors
    ros-indigo/cob_canopen_motor
    ros-indigo/cob_elmo_homing
    ros-indigo/cob_generic_can
    ros-indigo/cob_head_axis
    ros-indigo/cob_light
    ros-indigo/cob_mimic
    ros-indigo/cob_phidgets
    ros-indigo/cob_relayboard
    ros-indigo/cob_scan_unifier
    ros-indigo/cob_sick_lms1xx
    ros-indigo/cob_sick_s300
    ros-indigo/cob_sound
    ros-indigo/cob_undercarriage_ctrl
    ros-indigo/cob_utilities
    ros-indigo/cob_voltage_control
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
