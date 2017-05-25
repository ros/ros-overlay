# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://gitlab.uni-koblenz.de/robbie/homer_mapping/repository/archive.tar.gz?ref=release/kinetic/homer_navigation/0.1.17-1"

LICENSE="LGPL-v2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/homer_nav_libs
    ros-kinetic/nav_msgs
    ros-kinetic/roscpp
    ros-kinetic/std_msgs
    ros-kinetic/roslib
    ros-kinetic/sensor_msgs
    ros-kinetic/homer_ptu_msgs
    ros-kinetic/homer_robbie_architecture
    ros-kinetic/tf
    ros-kinetic/homer_mapnav_msgs
    ros-kinetic/eigen

"
DEPEND="${RDEPEND}
    ros-kinetic/homer_nav_libs
    ros-kinetic/nav_msgs
    ros-kinetic/roscpp
    ros-kinetic/std_msgs
    ros-kinetic/roslib
    ros-kinetic/sensor_msgs
    ros-kinetic/homer_ptu_msgs
    ros-kinetic/cmake_modules
    ros-kinetic/homer_robbie_architecture
    ros-kinetic/tf
    ros-kinetic/homer_mapnav_msgs
    ros-kinetic/eigen

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
