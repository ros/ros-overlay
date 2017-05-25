# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/robot_model-release/archive/release/kinetic/urdf/1.12.8-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/roscpp
    ros-kinetic/pluginlib
    ros-kinetic/rosconsole_bridge
    ros-kinetic/liburdfdom-headers-dev
    ros-kinetic/urdf_parser_plugin
    ros-kinetic/liburdfdom-dev

"
DEPEND="${RDEPEND}
    ros-kinetic/roscpp
    ros-kinetic/pluginlib
    ros-kinetic/rosconsole_bridge
    ros-kinetic/liburdfdom-headers-dev
    ros-kinetic/cmake_modules
    ros-kinetic/rostest
    ros-kinetic/urdf_parser_plugin
    ros-kinetic/liburdfdom-dev

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
