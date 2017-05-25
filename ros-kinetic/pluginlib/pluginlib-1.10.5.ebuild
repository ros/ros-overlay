# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/pluginlib-release/archive/release/kinetic/pluginlib/1.10.5-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/rosconsole
    ros-kinetic/class_loader
    ros-kinetic/roslib
    ros-kinetic/boost
    ros-kinetic/tinyxml

"
DEPEND="${RDEPEND}
    ros-kinetic/rosconsole
    ros-kinetic/class_loader
    ros-kinetic/roslib
    ros-kinetic/cmake_modules
    ros-kinetic/tinyxml
    ros-kinetic/boost

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
