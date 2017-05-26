# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="SVH Driver wrapper to enable control of the Schunk five finger hand"
HOMEPAGE="http://www.ros.org/wiki/schunk_svh_driver"
SRC_URI="https://github.com/fzi-forschungszentrum-informatik/schunk_svh_driver-release/archive/release/kinetic/schunk_svh_driver/0.2.0-0.tar.gz"

LICENSE="LGPL"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/fzi_icl_comm
    ros-kinetic/rospy
    ros-kinetic/xacro
    ros-kinetic/fzi_icl_core
    ros-kinetic/rqt_gui
    ros-kinetic/sensor_msgs
    ros-kinetic/roscpp
    ros-kinetic/rqt_gui_py
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/std_msgs
    ros-kinetic/urdf
"
DEPEND="
    ros-kinetic/fzi_icl_comm
    ros-kinetic/rospy
    ros-kinetic/xacro
    ros-kinetic/fzi_icl_core
    ros-kinetic/rqt_gui
    ros-kinetic/sensor_msgs
    ros-kinetic/roscpp
    ros-kinetic/rqt_gui_py
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/std_msgs
    ros-kinetic/urdf
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo

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
    echo ""
}

pkg_postinst() {
    cd ../work
    source /opt/ros/kinetic/setup.bash
    catkin_make_isolated --install --install-space="/opt/ros/kinetic" || die
}
