# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="A rosout GUI viewer developed at Southwest Research Insititute as an
     alternative to rqt_console."
HOMEPAGE="http://ros.org/wiki/swri_console"
SRC_URI="https://github.com/swri-robotics-gbp/swri_console-release/archive/release/kinetic/swri_console/1.0.0-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/rosgraph_msgs
    ros-kinetic/roscpp
    ros-kinetic/rosbag_storage
    dev-qt/qtwidgets
    dev-qt/qtgui
    dev-qt/qtcore
"
DEPEND="
    ros-kinetic/rosgraph_msgs
    ros-kinetic/roscpp
    ros-kinetic/rosbag_storage
    dev-qt/qtwidgets
    dev-qt/qtgui
    dev-qt/qtcore
    dev-qt/qtopengl
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
