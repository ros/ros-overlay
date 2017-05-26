# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="ROS packages for the thormang3_mpc (meta package)"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-MPC-release/archive/release/kinetic/thormang3_mpc/0.1.3-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/thormang3_head_control_module
    ros-kinetic/thormang3_kinematics_dynamics
    ros-kinetic/thormang3_gripper_module
    ros-kinetic/thormang3_manager
    ros-kinetic/thormang3_manipulation_module
    ros-kinetic/thormang3_action_module
    ros-kinetic/thormang3_imu_3dm_gx4
    ros-kinetic/sensor_module_tutorial
    ros-kinetic/thormang3_walking_module
    ros-kinetic/ati_ft_sensor
    ros-kinetic/thormang3_balance_control
    ros-kinetic/thormang3_base_module
    ros-kinetic/thormang3_feet_ft_module
    ros-kinetic/motion_module_tutorial
"
DEPEND="${RDEPEND}
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
    source /opt/ros/kinetic/setup.bash
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}"
    rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
    rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
}
