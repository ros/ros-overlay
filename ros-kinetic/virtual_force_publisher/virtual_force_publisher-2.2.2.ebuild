# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="publish end effector's force, which is estmated from joint torque value"
HOMEPAGE="http://ros.org/wiki/virtual_force_publisher"
SRC_URI="https://github.com/tork-a/jsk_common-release/archive/release/kinetic/virtual_force_publisher/2.2.2-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/urdf
    ros-kinetic/kdl_parser
    ros-kinetic/tf_conversions
    ros-kinetic/sensor_msgs
    ros-kinetic/geometry_msgs
"
DEPEND="
    ros-kinetic/urdf
    ros-kinetic/kdl_parser
    ros-kinetic/tf_conversions
    ros-kinetic/sensor_msgs
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
