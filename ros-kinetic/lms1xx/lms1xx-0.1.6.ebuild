# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://ros.org/wiki/LMS1xx"
SRC_URI="https://github.com/clearpath-gbp/lms1xx-release/archive/release/kinetic/lms1xx/0.1.6-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/rosconsole_bridge
    ros-kinetic/sensor_msgs
    ros-kinetic/roscpp
    ros-kinetic/roscpp_serialization

"
DEPEND="${RDEPEND}
    ros-kinetic/rosconsole_bridge
    ros-kinetic/sensor_msgs
    ros-kinetic/roscpp
    ros-kinetic/roscpp_serialization

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
