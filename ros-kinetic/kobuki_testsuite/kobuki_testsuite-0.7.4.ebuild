# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/kobuki-release/archive/release/kinetic/kobuki_testsuite/0.7.4-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/kobuki_msgs
    ros-kinetic/std_msgs
    ros-kinetic/message_runtime
    ros-kinetic/sensor_msgs
    ros-kinetic/geometry_msgs
    ros-kinetic/kobuki_node
    ros-kinetic/python_orocos_kdl

"
DEPEND="${RDEPEND}
    ros-kinetic/kobuki_msgs
    ros-kinetic/std_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/geometry_msgs
    ros-kinetic/kobuki_node
    ros-kinetic/message_generation
    ros-kinetic/python_orocos_kdl

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
