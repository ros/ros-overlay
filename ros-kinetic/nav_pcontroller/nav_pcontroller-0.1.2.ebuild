# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://www.github.com/code-iai/nav_pcontroller"
SRC_URI="https://github.com/code-iai-release/nav_pcontroller-release/archive/release/kinetic/nav_pcontroller/0.1.2-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/roscpp
    ros-kinetic/sensor_msgs
    ros-kinetic/actionlib
    ros-kinetic/roslib
    ros-kinetic/std_msgs
    ros-kinetic/move_base_msgs
    ros-kinetic/geometry_msgs
    ros-kinetic/visualization_msgs
    ros-kinetic/tf

"
DEPEND="${RDEPEND}
    ros-kinetic/roscpp
    ros-kinetic/sensor_msgs
    ros-kinetic/actionlib
    ros-kinetic/roslib
    ros-kinetic/std_msgs
    ros-kinetic/move_base_msgs
    ros-kinetic/geometry_msgs
    ros-kinetic/visualization_msgs
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
