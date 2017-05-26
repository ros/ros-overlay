# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="ROS Driver for XSens MT/MTi/MTi-G devices."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ethz-asl/ethzasl_xsens_driver-release/archive/release/kinetic/xsens_driver/2.1.0-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/rospy
    ros-kinetic/diagnostic_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/tf
    ros-kinetic/std_msgs
    ros-kinetic/geometry_msgs
"
DEPEND="
    ros-kinetic/rospy
    ros-kinetic/diagnostic_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/tf
    ros-kinetic/std_msgs
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
