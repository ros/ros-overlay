# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="ROS packages for the thormang3_mpc (meta package)"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-MPC-release/archive/release/kinetic/thormang3_mpc/0.1.3-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-kinetic/ati_ft_sensor
    ros-kinetic/motion_module_tutorial
    ros-kinetic/sensor_module_tutorial
    ros-kinetic/thormang3_action_module
    ros-kinetic/thormang3_balance_control
    ros-kinetic/thormang3_base_module
    ros-kinetic/thormang3_feet_ft_module
    ros-kinetic/thormang3_gripper_module
    ros-kinetic/thormang3_head_control_module
    ros-kinetic/thormang3_imu_3dm_gx4
    ros-kinetic/thormang3_kinematics_dynamics
    ros-kinetic/thormang3_manager
    ros-kinetic/thormang3_manipulation_module
    ros-kinetic/thormang3_walking_module
"
DEPEND="${RDEPEND}
    ros-kinetic/catkin
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
        -DPYTHON_INSTALL_DIR=lib64/site-packages/python3.5        -DPYTHON_EXECUTABLE=/usr/bin/ros-python
        -DCATKIN_BUILD_BINARY_PACKAGE=1
     )
    cmake-utils_src_configure
}

src_install() {
    cd ${WORKDIR}/${P}_build
    make install || die
}
