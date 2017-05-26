# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Bumper/cliff to pointcloud nodelet:
    Publish bumpers and cliff sensors events as points in a pointcloud, so navistack can use them
    for poor-man navigation. Implemented as a nodelet intended to run together with kobuki_node."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/kobuki-release/archive/release/kinetic/kobuki_bumper2pc/0.7.4-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/roscpp
    ros-kinetic/kobuki_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/pluginlib
    ros-kinetic/nodelet
"
DEPEND="
    ros-kinetic/roscpp
    ros-kinetic/kobuki_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/pluginlib
    ros-kinetic/nodelet
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
