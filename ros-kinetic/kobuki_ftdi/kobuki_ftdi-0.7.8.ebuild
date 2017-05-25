# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/kobuki_core-release/archive/release/kinetic/kobuki_ftdi/0.7.8-1.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/ftdi-eeprom
    ros-kinetic/libftdi-dev
    ros-kinetic/libusb-dev
    ros-kinetic/ecl_command_line

"
DEPEND="${RDEPEND}
    ros-kinetic/pkg-config
    ros-kinetic/libftdi-dev
    ros-kinetic/ftdi-eeprom
    ros-kinetic/libusb-dev
    ros-kinetic/ecl_command_line

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
