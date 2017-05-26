# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="The agvs_pad package.Component to control the robot by using a ps3 pad."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/RobotnikAutomation/agvs_common-release/archive/release/kinetic/agvs_pad/0.1.3-1.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/std_srvs
    ros-kinetic/ackermann_msgs
    ros-kinetic/diagnostic_updater
    ros-kinetic/diagnostic_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/std_msgs
    ros-kinetic/robotnik_msgs
    ros-kinetic/geometry_msgs
"
DEPEND="
    ros-kinetic/std_srvs
    ros-kinetic/ackermann_msgs
    ros-kinetic/diagnostic_updater
    ros-kinetic/diagnostic_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/std_msgs
    ros-kinetic/robotnik_msgs
    ros-kinetic/geometry_msgs
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
