# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ROBOTIS-GIT-release/dynamixel-workbench-release/archive/release/kinetic/dynamixel_workbench_single_manager/0.1.5-2.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/dynamixel_workbench_toolbox
    ros-kinetic/dynamixel_sdk
    ros-kinetic/std_msgs
    ros-kinetic/roscpp
    ros-kinetic/dynamixel_workbench_msgs

"
DEPEND="${RDEPEND}
    ros-kinetic/dynamixel_workbench_toolbox
    ros-kinetic/dynamixel_sdk
    ros-kinetic/std_msgs
    ros-kinetic/roscpp
    ros-kinetic/dynamixel_workbench_msgs

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
