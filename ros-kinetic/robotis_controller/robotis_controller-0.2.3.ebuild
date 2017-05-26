# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="The main package that controls THORMANG3."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ROBOTIS-GIT-release/ROBOTIS-Framework-release/archive/release/kinetic/robotis_controller/0.2.3-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/dynamixel_sdk
    ros-kinetic/robotis_framework_common
    ros-kinetic/robotis_device
    ros-kinetic/robotis_controller_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/roslib
    ros-kinetic/roscpp
    ros-kinetic/std_msgs
"
DEPEND="
    ros-kinetic/dynamixel_sdk
    ros-kinetic/robotis_framework_common
    ros-kinetic/robotis_device
    ros-kinetic/robotis_controller_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/roslib
    ros-kinetic/roscpp
    ros-kinetic/std_msgs
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
