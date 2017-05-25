# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://ros.org/wiki/p2os-purdue"
SRC_URI="https://github.com/allenh1/p2os-release/archive/release/kinetic/p2os_urdf/2.0.6-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/std_msgs
    ros-kinetic/urdf
    ros-kinetic/sensor_msgs
    ros-kinetic/kdl_parser
    ros-kinetic/geometry_msgs
    ros-kinetic/tf

"
DEPEND="${RDEPEND}
    ros-kinetic/sensor_msgs
    ros-kinetic/urdf
    ros-kinetic/std_msgs
    ros-kinetic/kdl_parser
    ros-kinetic/geometry_msgs
    ros-kinetic/tf

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
