# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="The ncd_parser package reads in .alog data files from the New College Dataset and broadcasts scan and odometry messages to ROS."
HOMEPAGE="http://wiki.ros.org/ncd_parser"
SRC_URI="https://github.com/ros-gbp/scan_tools-release/archive/release/kinetic/ncd_parser/0.3.2-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/roscpp
    ros-kinetic/tf
    ros-kinetic/sensor_msgs
"
DEPEND="
    ros-kinetic/roscpp
    ros-kinetic/tf
    ros-kinetic/sensor_msgs
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo

src_unpack() {
    wget -O ${P}.tar.gz ${SRC_URI}
    tar -xf ${P}.tar.gz
    rm -f ${P}.tar.gz
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
