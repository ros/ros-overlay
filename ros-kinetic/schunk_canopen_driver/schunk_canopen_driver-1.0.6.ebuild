# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="The schunk_canopen_driver package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/fzi-forschungszentrum-informatik/schunk_canopen_driver-release/archive/release/kinetic/schunk_canopen_driver/1.0.6-0.tar.gz"

LICENSE="FZI all rights reserved"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/fzi_icl_can
    ros-kinetic/control_msgs
    ros-kinetic/urdf
    ros-kinetic/joint_limits_interface
    ros-kinetic/ros_controllers
    ros-kinetic/std_srvs
    ros-kinetic/fzi_icl_core
    ros-kinetic/xacro
    ros-kinetic/hardware_interface
    ros-kinetic/std_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/controller_manager
    ros-kinetic/robot_state_publisher
    ros-kinetic/roscpp
    ros-kinetic/message_runtime
    ros-kinetic/actionlib
"
DEPEND="${RDEPEND}
    ros-kinetic/message_generation
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
