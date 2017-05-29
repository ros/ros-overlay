# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This stack contains the different gui plugins used with the shadow robot stacks."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/shadow-robot/sr-visualization-release/archive/release/indigo/sr_visualization/1.3.1-0.tar.gz"

LICENSE="||( GPL BSD )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/sr_gui_hand_calibration
    ros-indigo/sr_gui_self_test
    ros-indigo/sr_gui_bootloader
    ros-indigo/sr_gui_motor_resetter
    ros-indigo/sr_visualization_icons
    ros-indigo/sr_gui_joint_slider
    ros-indigo/sr_gui_change_muscle_controllers
    ros-indigo/sr_gui_controller_tuner
    ros-indigo/sr_gui_grasp_controller
    ros-indigo/sr_gui_change_controllers
    ros-indigo/sr_gui_muscle_driver_bootloader
    ros-indigo/sr_gui_movement_recorder
"
DEPEND="${RDEPEND}
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/indigo"

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
