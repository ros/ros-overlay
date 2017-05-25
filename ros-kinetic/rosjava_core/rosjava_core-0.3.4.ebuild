# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://ros.org/wiki/rosjava_core"
SRC_URI="https://github.com/rosjava-release/rosjava_core-release/archive/release/kinetic/rosjava_core/0.3.4-1.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="

"
DEPEND="${RDEPEND}
    ros-kinetic/nav_msgs
    ros-kinetic/rosgraph_msgs
    ros-kinetic/rosjava_bootstrap
    ros-kinetic/rosjava_messages
    ros-kinetic/sensor_msgs
    ros-kinetic/rosjava_build_tools
    ros-kinetic/geometry_msgs
    ros-kinetic/rosjava_test_msgs
    ros-kinetic/tf2_msgs

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
