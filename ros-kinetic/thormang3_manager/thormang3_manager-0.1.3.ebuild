# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-MPC-release/archive/release/kinetic/thormang3_manager/0.1.3-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/robotis_controller
    ros-kinetic/roscpp

"
DEPEND="${RDEPEND}
    ros-kinetic/thormang3_head_control_module
    ros-kinetic/robotis_controller_msgs
    ros-kinetic/thormang3_gripper_module
    ros-kinetic/roscpp
    ros-kinetic/thormang3_base_module
    ros-kinetic/thormang3_manipulation_module
    ros-kinetic/thormang3_action_module
    ros-kinetic/thormang3_walking_module
    ros-kinetic/robotis_controller
    ros-kinetic/cmake_modules
    ros-kinetic/dynamixel_sdk
    ros-kinetic/robotis_device
    ros-kinetic/thormang3_balance_control
    ros-kinetic/thormang3_feet_ft_module
    ros-kinetic/robotis_framework_common

"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo

src_unpack() {
    default
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
