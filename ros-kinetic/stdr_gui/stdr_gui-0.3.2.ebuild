# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/stdr-simulator-ros-pkg/stdr_simulator-release/archive/release/kinetic/stdr_gui/0.3.2-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/stdr_robot
    ros-kinetic/nav_msgs
    ros-kinetic/stdr_server
    ros-kinetic/roscpp
    ros-kinetic/roslib
    ros-kinetic/sensor_msgs
    ros-kinetic/tf
    ros-kinetic/stdr_parser
    ros-kinetic/libqt4
    ros-kinetic/stdr_msgs

"
DEPEND="${RDEPEND}
    ros-kinetic/stdr_robot
    ros-kinetic/nav_msgs
    ros-kinetic/stdr_server
    ros-kinetic/roscpp
    ros-kinetic/roslib
    ros-kinetic/sensor_msgs
    ros-kinetic/libqt4-dev
    ros-kinetic/stdr_parser
    ros-kinetic/tf
    ros-kinetic/stdr_msgs

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
