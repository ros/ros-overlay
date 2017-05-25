# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://ros.org/wiki/laser_geometry"
SRC_URI="https://github.com/ros-gbp/laser_geometry-release/archive/release/kinetic/laser_geometry/1.6.4-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/eigen
    ros-kinetic/python-numpy
    ros-kinetic/sensor_msgs
    ros-kinetic/angles
    ros-kinetic/tf
    ros-kinetic/boost
    ros-kinetic/roscpp

"
DEPEND="${RDEPEND}
    ros-kinetic/eigen
    ros-kinetic/sensor_msgs
    ros-kinetic/cmake_modules
    ros-kinetic/angles
    ros-kinetic/tf
    ros-kinetic/boost
    ros-kinetic/roscpp

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
