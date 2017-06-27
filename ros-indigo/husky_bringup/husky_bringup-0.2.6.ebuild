# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="Clearpath Husky installation and integration package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/clearpath-gbp/husky_robot-release/archive/release/indigo/husky_bringup/0.2.6-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/husky_base
    ros-indigo/husky_control
    ros-indigo/husky_description
    ros-indigo/imu_filter_madgwick
    ros-indigo/imu_transformer
    ros-indigo/lms1xx
    ros-indigo/microstrain_3dmgx2_imu
    ros-indigo/nmea_comms
    ros-indigo/nmea_navsat_driver
    ros-indigo/robot_localization
    ros-indigo/robot_upstart
    ros-indigo/tf
    ros-indigo/tf2_ros
    ros-indigo/um6
    ros-indigo/um7
    ros-indigo/ur_modern_driver
    sci-libs/scipy
"
DEPEND="${RDEPEND}
    ros-indigo/catkin
    ros-indigo/roslaunch
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
