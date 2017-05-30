# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This package describes robot manager to execute THORMANG3's motion modules."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-MPC-release/archive/release/kinetic/thormang3_manager/0.1.3-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/robotis_controller
    ros-kinetic/roscpp
"
DEPEND="${RDEPEND}
    ros-kinetic/robotis_framework_common
    ros-kinetic/cmake_modules
    ros-kinetic/thormang3_walking_module
    ros-kinetic/thormang3_action_module
    ros-kinetic/thormang3_balance_control
    ros-kinetic/dynamixel_sdk
    ros-kinetic/robotis_device
    ros-kinetic/thormang3_feet_ft_module
    ros-kinetic/thormang3_base_module
    ros-kinetic/thormang3_manipulation_module
    ros-kinetic/thormang3_gripper_module
    ros-kinetic/robotis_controller_msgs
    ros-kinetic/thormang3_head_control_module
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/kinetic"

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
    cd ../../work
    source /${ROS_PREFIX}/setup.bash
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
