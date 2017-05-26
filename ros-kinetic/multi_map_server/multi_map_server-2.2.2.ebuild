# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="multi_map_server provides the"
HOMEPAGE="http://ros.org/wiki/map_server"
SRC_URI="https://github.com/tork-a/jsk_common-release/archive/release/kinetic/multi_map_server/2.2.2-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/rospy
    ros-kinetic/rosconsole
    ros-kinetic/map_server
    ros-kinetic/nav_msgs
    ros-kinetic/roscpp
    ros-kinetic/tf
    dev-cpp/yaml-cpp
    media-libs/sdl-image
"
DEPEND="
    ros-kinetic/rospy
    ros-kinetic/rosconsole
    ros-kinetic/map_server
    ros-kinetic/nav_msgs
    ros-kinetic/roscpp
    ros-kinetic/tf
    ros-kinetic/jsk_tools
    ros-kinetic/rosmake
    dev-python/pyyaml
    dev-cpp/yaml-cpp
    media-libs/sdl-image
    dev-python/pillow
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
