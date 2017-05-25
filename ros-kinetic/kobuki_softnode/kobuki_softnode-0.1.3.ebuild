# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://ros.org/wiki/kobuki"
SRC_URI="https://github.com/yujinrobot-release/kobuki_soft-release/archive/release/kinetic/kobuki_softnode/0.1.3-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/nav_msgs
    ros-kinetic/kobuki_msgs
    ros-kinetic/kobuki_description
    ros-kinetic/roscpp
    ros-kinetic/diagnostic_aggregator
    ros-kinetic/robot_state_publisher
    ros-kinetic/sensor_msgs
    ros-kinetic/geometry_msgs
    ros-kinetic/tf
    ros-kinetic/nodelet

"
DEPEND="${RDEPEND}
    ros-kinetic/nav_msgs
    ros-kinetic/kobuki_msgs
    ros-kinetic/roscpp
    ros-kinetic/sensor_msgs
    ros-kinetic/geometry_msgs
    ros-kinetic/tf
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
