# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="SVH Driver wrapper to enable control of the Schunk five finger hand"
HOMEPAGE="http://www.ros.org/wiki/schunk_svh_driver"
SRC_URI="https://github.com/fzi-forschungszentrum-informatik/schunk_svh_driver-release/archive/release/kinetic/schunk_svh_driver/0.2.0-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="LGPL"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/fzi_icl_comm
    ros-kinetic/fzi_icl_core
    ros-kinetic/roscpp
    ros-kinetic/rospy
    ros-kinetic/rqt_gui
    ros-kinetic/rqt_gui_py
    ros-kinetic/sensor_msgs
    ros-kinetic/std_msgs
    ros-kinetic/urdf
    ros-kinetic/xacro
"
DEPEND="${RDEPEND}
    ros-kinetic/catkin
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/kinetic"

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
    export PYTHONPATH="/${ROS_PREFIX}/lib/python3.5/site-packages:${PYTHONPATH}"
    export PYTHONPATH="/${ROS_PREFIX}/lib64/python3.5/site-packages:${PYTHONPATH}"
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
