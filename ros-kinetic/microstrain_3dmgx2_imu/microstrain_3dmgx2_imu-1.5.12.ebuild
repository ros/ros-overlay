# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="A driver for IMUs compatible the microstrain 3DM-GX2 and 3DM-GX3 protocol. Includes 
    a heavily modified standalone driver pulled from the player distribution, 
    and a ROS node."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/microstrain_3dmgx2_imu-release/archive/release/kinetic/microstrain_3dmgx2_imu/1.5.12-1.tar.gz"

LICENSE="LGPL"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/std_srvs
    ros-kinetic/self_test
    ros-kinetic/sensor_msgs
    ros-kinetic/diagnostic_updater
    ros-kinetic/roscpp
    ros-kinetic/message_runtime
    ros-kinetic/tf
    ros-kinetic/std_msgs
    dev-libs/log4cxx
"
DEPEND="
    ros-kinetic/std_srvs
    ros-kinetic/self_test
    ros-kinetic/sensor_msgs
    ros-kinetic/diagnostic_updater
    ros-kinetic/roscpp
    ros-kinetic/tf
    ros-kinetic/message_generation
    ros-kinetic/std_msgs
    dev-libs/log4cxx
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
