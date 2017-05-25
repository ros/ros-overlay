# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/UTNuclearRoboticsPublic/gauges-release/archive/release/kinetic/rqt_gauges/1.0.7-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/rqt_gui_cpp
    ros-kinetic/rqt_gui
    ros-kinetic/std_msgs
    ros-kinetic/roscpp
    ros-kinetic/pluginlib

"
DEPEND="${RDEPEND}
    ros-kinetic/roscpp
    ros-kinetic/pluginlib
    ros-kinetic/rqt_gui_cpp
    ros-kinetic/rqt_gui
    ros-kinetic/std_msgs
    ros-kinetic/roslint

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
