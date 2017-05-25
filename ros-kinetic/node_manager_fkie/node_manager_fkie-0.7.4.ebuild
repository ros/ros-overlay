# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://ros.org/wiki/node_manager_fkie"
SRC_URI="https://github.com/fkie-release/multimaster_fkie-release/archive/release/kinetic/node_manager_fkie/0.7.4-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/roslaunch
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/xterm
    ros-kinetic/roslib
    ros-kinetic/rqt_reconfigure
    ros-kinetic/python_qt_binding
    ros-kinetic/screen
    ros-kinetic/multimaster_msgs_fkie
    ros-kinetic/rosgraph
    ros-kinetic/rosservice
    ros-kinetic/master_sync_fkie
    ros-kinetic/rosmsg
    ros-kinetic/rqt_gui
    ros-kinetic/rospy
    ros-kinetic/master_discovery_fkie
    ros-kinetic/default_cfg_fkie
    ros-kinetic/diagnostic_msgs
    ros-kinetic/python-paramiko
    ros-kinetic/python-docutils

"
DEPEND="${RDEPEND}
    ros-kinetic/master_discovery_fkie
    ros-kinetic/multimaster_msgs_fkie
    ros-kinetic/diagnostic_msgs

"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo

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
    echo ""
}

pkg_postinst() {
    cd ../work
    source /opt/ros/kinetic/setup.bash
    catkin_make_isolated --install --install-space="/opt/ros/kinetic" || die
}
