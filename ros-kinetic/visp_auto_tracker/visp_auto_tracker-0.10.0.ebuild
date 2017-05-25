# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://wiki.ros.org/visp_auto_tracker"
SRC_URI="https://github.com/lagadic/vision_visp-release/archive/release/kinetic/visp_auto_tracker/0.10.0-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/libdmtx-dev
    ros-kinetic/visp
    ros-kinetic/zbar
    ros-kinetic/roscpp
    ros-kinetic/message_filters
    ros-kinetic/std_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/resource_retriever
    ros-kinetic/geometry_msgs
    ros-kinetic/visp_tracker
    ros-kinetic/visp_bridge

"
DEPEND="${RDEPEND}
    ros-kinetic/libdmtx-dev
    ros-kinetic/visp
    ros-kinetic/zbar
    ros-kinetic/roscpp
    ros-kinetic/message_filters
    ros-kinetic/std_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/resource_retriever
    ros-kinetic/geometry_msgs
    ros-kinetic/visp_tracker
    ros-kinetic/visp_bridge

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
