# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://ros.org/wiki/swri_console"
SRC_URI="https://github.com/swri-robotics-gbp/swri_console-release/archive/release/kinetic/swri_console/1.0.0-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/rosgraph_msgs
    ros-kinetic/libqt5-widgets
    ros-kinetic/roscpp
    ros-kinetic/libqt5-gui
    ros-kinetic/libqt5-core
    ros-kinetic/rosbag_storage

"
DEPEND="${RDEPEND}
    ros-kinetic/rosgraph_msgs
    ros-kinetic/libqt5-widgets
    ros-kinetic/roscpp
    ros-kinetic/libqt5-gui
    ros-kinetic/libqt5-core
    ros-kinetic/libqt5-opengl-dev
    ros-kinetic/rosbag_storage

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
