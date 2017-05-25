# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://ros.org/wiki/map_server"
SRC_URI="https://github.com/tork-a/jsk_common-release/archive/release/kinetic/multi_map_server/2.2.2-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/nav_msgs
    ros-kinetic/rosconsole
    ros-kinetic/map_server
    ros-kinetic/roscpp
    ros-kinetic/sdl-image
    ros-kinetic/rospy
    ros-kinetic/yaml-cpp
    ros-kinetic/tf

"
DEPEND="${RDEPEND}
    ros-kinetic/nav_msgs
    ros-kinetic/rosconsole
    ros-kinetic/map_server
    ros-kinetic/roscpp
    ros-kinetic/python-yaml
    ros-kinetic/python-imaging
    ros-kinetic/sdl-image
    ros-kinetic/rospy
    ros-kinetic/yaml-cpp
    ros-kinetic/tf
    ros-kinetic/jsk_tools
    ros-kinetic/rosmake

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
