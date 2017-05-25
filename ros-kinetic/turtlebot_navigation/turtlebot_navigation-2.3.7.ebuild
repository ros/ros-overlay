# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/turtlebot-release/turtlebot_apps-release/archive/release/kinetic/turtlebot_navigation/2.3.7-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/move_base
    ros-kinetic/map_server
    ros-kinetic/roscpp
    ros-kinetic/dwa_local_planner
    ros-kinetic/sensor_msgs
    ros-kinetic/gmapping
    ros-kinetic/amcl
    ros-kinetic/tf
    ros-kinetic/turtlebot_bringup

"
DEPEND="${RDEPEND}
    ros-kinetic/tf
    ros-kinetic/sensor_msgs
    ros-kinetic/roscpp

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
