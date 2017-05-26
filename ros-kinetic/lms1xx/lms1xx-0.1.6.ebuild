# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="The lms1xx package contains a basic ROS driver for the SICK LMS1xx line of LIDARs."
HOMEPAGE="http://ros.org/wiki/LMS1xx"
SRC_URI="https://github.com/clearpath-gbp/lms1xx-release/archive/release/kinetic/lms1xx/0.1.6-0.tar.gz"

LICENSE="LGPL"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/roscpp
    ros-kinetic/roscpp_serialization
    ros-kinetic/sensor_msgs
    ros-kinetic/rosconsole_bridge
"
DEPEND="
    ros-kinetic/roscpp
    ros-kinetic/roscpp_serialization
    ros-kinetic/sensor_msgs
    ros-kinetic/rosconsole_bridge
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
