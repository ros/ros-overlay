# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/qt_ros-release/archive/release/kinetic/qt_tutorials/0.2.9-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/qt_build
    ros-kinetic/message_runtime
    ros-kinetic/std_msgs
    ros-kinetic/roscpp
    ros-kinetic/libqt4-dev

"
DEPEND="${RDEPEND}
    ros-kinetic/message_generation
    ros-kinetic/qt_build
    ros-kinetic/std_msgs
    ros-kinetic/roscpp
    ros-kinetic/libqt4-dev

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
