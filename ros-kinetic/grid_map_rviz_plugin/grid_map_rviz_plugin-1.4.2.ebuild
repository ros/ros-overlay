# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ethz-asl/grid_map-release/archive/release/kinetic/grid_map_rviz_plugin/1.4.2-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/libqt5-widgets
    ros-kinetic/rviz
    ros-kinetic/grid_map_ros
    ros-kinetic/libqt5-gui
    ros-kinetic/grid_map_msgs
    ros-kinetic/libqt5-core

"
DEPEND="${RDEPEND}
    ros-kinetic/grid_map_msgs
    ros-kinetic/grid_map_ros
    ros-kinetic/qtbase5-dev
    ros-kinetic/rviz

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
