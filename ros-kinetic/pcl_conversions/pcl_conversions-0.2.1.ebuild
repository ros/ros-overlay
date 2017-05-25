# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/pcl_conversions-release/archive/release/kinetic/pcl_conversions/0.2.1-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/roscpp
    ros-kinetic/sensor_msgs
    ros-kinetic/pcl_msgs
    ros-kinetic/std_msgs
    ros-kinetic/libpcl-all-dev
    ros-kinetic/libpcl-all

"
DEPEND="${RDEPEND}
    ros-kinetic/roscpp
    ros-kinetic/sensor_msgs
    ros-kinetic/pcl_msgs
    ros-kinetic/std_msgs
    ros-kinetic/cmake_modules
    ros-kinetic/libpcl-all-dev

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
