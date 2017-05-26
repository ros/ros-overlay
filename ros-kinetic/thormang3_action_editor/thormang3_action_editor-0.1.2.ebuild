# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="The thormang3_action_editor package
    This package is a action editor for thormang3.
    The action file which is edited by this editor will be used with this action editor."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-Tools-release/archive/release/kinetic/thormang3_action_editor/0.1.2-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/robotis_framework_common
    ros-kinetic/robotis_controller_msgs
    ros-kinetic/thormang3_action_module
    ros-kinetic/roscpp
    ros-kinetic/robotis_controller
    sys-libs/ncurses
"
DEPEND="
    ros-kinetic/robotis_framework_common
    ros-kinetic/robotis_controller_msgs
    ros-kinetic/thormang3_action_module
    ros-kinetic/roscpp
    ros-kinetic/std_msgs
    ros-kinetic/robotis_controller
    sys-libs/ncurses
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
