# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Package containing the driver for the RoNeX boards."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/shadow-robot/sr-ronex-release/archive/release/indigo/sr_ronex_drivers/0.11.0-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="LGPLv3"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-indigo/diagnostic_msgs
    ros-indigo/diagnostic_updater
    ros-indigo/dynamic_reconfigure
    ros-indigo/pluginlib
    ros-indigo/realtime_tools
    ros-indigo/ros_ethercat_hardware
    ros-indigo/ros_ethercat_model
    ros-indigo/roscpp
    ros-indigo/rostest
    ros-indigo/sr_ronex_external_protocol
    ros-indigo/sr_ronex_hardware_interface
    ros-indigo/sr_ronex_msgs
    ros-indigo/sr_ronex_utilities
    ros-indigo/std_msgs
"
DEPEND="${RDEPEND}
    ros-indigo/catkin
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
