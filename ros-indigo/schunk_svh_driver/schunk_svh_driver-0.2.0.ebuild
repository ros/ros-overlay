# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="SVH Driver wrapper to enable control of the Schunk five finger hand"
HOMEPAGE="http://www.ros.org/wiki/schunk_svh_driver"
SRC_URI="https://github.com/fzi-forschungszentrum-informatik/schunk_svh_driver-release/archive/release/indigo/schunk_svh_driver/0.2.0-0.tar.gz"

LICENSE="LGPL"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/rospy
    ros-indigo/rqt_gui
    ros-indigo/fzi_icl_core
    ros-indigo/rqt_gui_py
    ros-indigo/xacro
    ros-indigo/std_msgs
    ros-indigo/sensor_msgs
    ros-indigo/fzi_icl_comm
    ros-indigo/roscpp
    ros-indigo/urdf
    ros-indigo/dynamic_reconfigure
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
