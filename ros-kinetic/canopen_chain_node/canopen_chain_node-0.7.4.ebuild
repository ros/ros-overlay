# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-industrial-release/ros_canopen-release/archive/release/kinetic/canopen_chain_node/0.7.4-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/socketcan_interface
    ros-kinetic/roslib
    ros-kinetic/std_srvs
    ros-kinetic/roscpp
    ros-kinetic/pluginlib
    ros-kinetic/canopen_master
    ros-kinetic/message_runtime
    ros-kinetic/std_msgs
    ros-kinetic/diagnostic_updater

"
DEPEND="${RDEPEND}
    ros-kinetic/socketcan_interface
    ros-kinetic/std_srvs
    ros-kinetic/roscpp
    ros-kinetic/pluginlib
    ros-kinetic/canopen_master
    ros-kinetic/roslib
    ros-kinetic/std_msgs
    ros-kinetic/diagnostic_updater
    ros-kinetic/message_generation

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
