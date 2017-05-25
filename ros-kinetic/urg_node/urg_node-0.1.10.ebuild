# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/urg_node-release/archive/release/kinetic/urg_node/0.1.10-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/rosconsole
    ros-kinetic/roscpp
    ros-kinetic/sensor_msgs
    ros-kinetic/diagnostic_updater
    ros-kinetic/laser_proc
    ros-kinetic/tf
    ros-kinetic/urg_c
    ros-kinetic/nodelet

"
DEPEND="${RDEPEND}
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/rosconsole
    ros-kinetic/roscpp
    ros-kinetic/sensor_msgs
    ros-kinetic/diagnostic_updater
    ros-kinetic/laser_proc
    ros-kinetic/tf
    ros-kinetic/urg_c
    ros-kinetic/nodelet

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
