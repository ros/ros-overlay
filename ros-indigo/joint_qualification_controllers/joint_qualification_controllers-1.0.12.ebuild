# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Controllers used in PR2 hardware testing. For testing counterbalance of PR2, and"
HOMEPAGE="http://www.ros.org/wiki/joint_qualification_controllers"
SRC_URI="https://github.com/TheDash/pr2_self_test-release/archive/release/indigo/joint_qualification_controllers/1.0.12-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/roscpp
    ros-indigo/pr2_hardware_interface
    ros-indigo/control_toolbox
    ros-indigo/std_msgs
    ros-indigo/pr2_mechanism_model
    ros-indigo/pluginlib
    ros-indigo/pr2_controller_interface
    ros-indigo/realtime_tools
    ros-indigo/robot_mechanism_controllers
    ros-indigo/urdf
    ros-indigo/sensor_msgs
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
