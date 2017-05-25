# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://www.mdpi.com/1424-8220/15/8/19302"
SRC_URI="https://github.com/uos-gbp/imu_tools-release/archive/release/kinetic/imu_complementary_filter/1.1.4-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/tf
    ros-kinetic/std_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/roscpp
    ros-kinetic/message_filters

"
DEPEND="${RDEPEND}
    ros-kinetic/roscpp
    ros-kinetic/message_filters
    ros-kinetic/sensor_msgs
    ros-kinetic/std_msgs
    ros-kinetic/cmake_modules
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
