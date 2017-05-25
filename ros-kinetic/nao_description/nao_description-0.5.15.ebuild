# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-naoqi/nao_robot-release/archive/release/kinetic/nao_description/0.5.15-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/xacro
    ros-kinetic/roscpp
    ros-kinetic/message_filters
    ros-kinetic/robot_state_publisher
    ros-kinetic/urdf
    ros-kinetic/sensor_msgs
    ros-kinetic/tf

"
DEPEND="${RDEPEND}
    ros-kinetic/xacro
    ros-kinetic/roscpp
    ros-kinetic/message_filters
    ros-kinetic/urdf
    ros-kinetic/sensor_msgs
    ros-kinetic/tf

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
