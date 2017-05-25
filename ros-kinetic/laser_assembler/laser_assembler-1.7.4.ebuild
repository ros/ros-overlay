# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://ros.org/wiki/laser_assembler"
SRC_URI="https://github.com/ros-gbp/laser_assembler-release/archive/release/kinetic/laser_assembler/1.7.4-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/laser_geometry
    ros-kinetic/roscpp
    ros-kinetic/message_filters
    ros-kinetic/pluginlib
    ros-kinetic/message_runtime
    ros-kinetic/sensor_msgs
    ros-kinetic/filters
    ros-kinetic/tf

"
DEPEND="${RDEPEND}
    ros-kinetic/laser_geometry
    ros-kinetic/roscpp
    ros-kinetic/message_filters
    ros-kinetic/pluginlib
    ros-kinetic/sensor_msgs
    ros-kinetic/tf
    ros-kinetic/rostest
    ros-kinetic/filters
    ros-kinetic/message_generation

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
