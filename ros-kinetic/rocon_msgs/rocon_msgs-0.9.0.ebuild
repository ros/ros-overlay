# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/rocon_msgs-release/archive/release/kinetic/rocon_msgs/0.9.0-1.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/rocon_device_msgs
    ros-kinetic/rocon_service_pair_msgs
    ros-kinetic/gateway_msgs
    ros-kinetic/concert_msgs
    ros-kinetic/rocon_tutorial_msgs
    ros-kinetic/rocon_app_manager_msgs
    ros-kinetic/concert_service_msgs
    ros-kinetic/scheduler_msgs
    ros-kinetic/rocon_std_msgs
    ros-kinetic/rocon_interaction_msgs

"
DEPEND="${RDEPEND}

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
