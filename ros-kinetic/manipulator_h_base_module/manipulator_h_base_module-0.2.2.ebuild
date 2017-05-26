# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="The manipulator_h_base_module package
    This package describes basic function to control ROBOTIS MANIPULATOR-H.
    This module is based on position control.
    We provides joint space and task space control (forward kinematics, inverse kinematics)."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ROBOTIS-GIT-release/ROBOTIS-MANIPULATOR-H-release/archive/release/kinetic/manipulator_h_base_module/0.2.2-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/roscpp
    ros-kinetic/geometry_msgs
    ros-kinetic/std_msgs
    ros-kinetic/cmake_modules
    ros-kinetic/robotis_device
"
DEPEND="
    ros-kinetic/dynamixel_sdk
    ros-kinetic/robotis_device
    ros-kinetic/cmake_modules
    ros-kinetic/manipulator_h_kinematics_dynamics
    ros-kinetic/roscpp
    ros-kinetic/manipulator_h_base_module_msgs
    ros-kinetic/std_msgs
    ros-kinetic/robotis_math
    ros-kinetic/geometry_msgs
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo

src_unpack() {
    wget -O ${P}.tar.gz ${SRC_URI}
    tar -xf ${P}.tar.gz
    rm -f ${P}.tar.gz
    mv *${P}* ${P}
}

src_configure() {
    mkdir ${WORKDIR}/src
    cp -R ${WORKDIR}/${P} ${WORKDIR}/src/${P}
}

src_compile() {
    echo ""
}

src_install() {
    echo ""
}

pkg_postinst() {
    cd ../work
    source /opt/ros/kinetic/setup.bash
    catkin_make_isolated --install --install-space="/opt/ros/kinetic" || die
}
