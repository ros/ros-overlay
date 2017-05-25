# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/world_canvas_libs-release/archive/release/kinetic/world_canvas_client_cpp/0.2.0-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/world_canvas_msgs
    ros-kinetic/visualization_msgs
    ros-kinetic/roscpp
    ros-kinetic/unique_id
    ros-kinetic/uuid_msgs

"
DEPEND="${RDEPEND}
    ros-kinetic/world_canvas_msgs
    ros-kinetic/visualization_msgs
    ros-kinetic/roscpp
    ros-kinetic/unique_id
    ros-kinetic/uuid_msgs

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
