# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/microstrain_3dmgx2_imu-release/archive/release/kinetic/microstrain_3dmgx2_imu/1.5.12-1.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/self_test
    ros-kinetic/std_srvs
    ros-kinetic/roscpp
    ros-kinetic/std_msgs
    ros-kinetic/message_runtime
    ros-kinetic/sensor_msgs
    ros-kinetic/diagnostic_updater
    ros-kinetic/tf
    ros-kinetic/log4cxx

"
DEPEND="${RDEPEND}
    ros-kinetic/self_test
    ros-kinetic/std_srvs
    ros-kinetic/roscpp
    ros-kinetic/std_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/diagnostic_updater
    ros-kinetic/tf
    ros-kinetic/message_generation
    ros-kinetic/log4cxx

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
