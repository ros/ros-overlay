# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://wiki.ros.org/multirobot_map_merge"
SRC_URI="https://github.com/hrnr/m-explore-release/archive/release/kinetic/multirobot_map_merge/2.0.0-1.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/nav_msgs
    ros-kinetic/tf2_geometry_msgs
    ros-kinetic/roscpp
    ros-kinetic/opencv3
    ros-kinetic/geometry_msgs
    ros-kinetic/map_msgs

"
DEPEND="${RDEPEND}
    ros-kinetic/nav_msgs
    ros-kinetic/tf2_geometry_msgs
    ros-kinetic/roscpp
    ros-kinetic/opencv3
    ros-kinetic/geometry_msgs
    ros-kinetic/map_msgs

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
