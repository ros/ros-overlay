# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Qt gui applications for interacting with the rocon framework."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/rocon_qt_gui-release/archive/release/indigo/rocon_qt_gui/0.7.12-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/rocon_qt_teleop
    ros-indigo/rocon_qt_app_manager
    ros-indigo/concert_qt_map_annotation
    ros-indigo/rocon_qt_library
    ros-indigo/rocon_qt_listener
    ros-indigo/rocon_remocon
    ros-indigo/concert_qt_teleop
    ros-indigo/rocon_gateway_graph
    ros-indigo/concert_qt_make_a_map
    ros-indigo/rocon_qt_master_info
    ros-indigo/concert_conductor_graph
    ros-indigo/concert_admin_app
    ros-indigo/concert_qt_service_info
"
DEPEND="${RDEPEND}
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/indigo"

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
    cd ../../work
    source /${ROS_PREFIX}/setup.bash
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
