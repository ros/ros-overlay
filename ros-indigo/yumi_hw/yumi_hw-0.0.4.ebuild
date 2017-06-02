# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Hardware interface for YuMi, for use in roscontrol"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/OrebroUniversity/yumi_release/archive/release/indigo/yumi_hw/0.0.4-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-indigo/cmake_modules
    ros-indigo/control_toolbox
    ros-indigo/controller_interface
    ros-indigo/controller_manager
    ros-indigo/hardware_interface
    ros-indigo/joint_limits_interface
    ros-indigo/kdl_parser
    ros-indigo/message_runtime
    ros-indigo/realtime_tools
    ros-indigo/roscpp
    ros-indigo/simple_message
    ros-indigo/std_msgs
    ros-indigo/tf
    ros-indigo/transmission_interface
    ros-indigo/urdf
"
DEPEND="${RDEPEND}
    ros-indigo/catkin
    ros-indigo/message_generation
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/indigo"

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
    cd ../../work
    source /${ROS_PREFIX}/setup.bash
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
