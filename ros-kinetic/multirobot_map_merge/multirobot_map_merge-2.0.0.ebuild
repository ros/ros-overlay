# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Merging multiple maps without knowledge of initial
  positions of robots."
HOMEPAGE="http://wiki.ros.org/multirobot_map_merge"
SRC_URI="https://github.com/hrnr/m-explore-release/archive/release/kinetic/multirobot_map_merge/2.0.0-1.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/tf2_geometry_msgs
    ros-kinetic/nav_msgs
    ros-kinetic/roscpp
    ros-kinetic/map_msgs
    ros-kinetic/geometry_msgs
    ros-kinetic/opencv3
"
DEPEND="
    ros-kinetic/tf2_geometry_msgs
    ros-kinetic/nav_msgs
    ros-kinetic/roscpp
    ros-kinetic/map_msgs
    ros-kinetic/geometry_msgs
    ros-kinetic/opencv3
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
