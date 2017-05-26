# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This package is single manager for a Dynamixel.
    Before operating Dynamixels, it can be used to check states of a Dynamixel and change address value with GUI."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ROBOTIS-GIT-release/dynamixel-workbench-release/archive/release/kinetic/dynamixel_workbench_single_manager_gui/0.1.5-2.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/roscpp
    ros-kinetic/dynamixel_workbench_msgs
    ros-kinetic/qt_build
    ros-kinetic/dynamixel_workbench_toolbox
    dev-qt/qtcore
"
DEPEND="
    ros-kinetic/roscpp
    ros-kinetic/dynamixel_workbench_msgs
    ros-kinetic/qt_build
    ros-kinetic/dynamixel_workbench_toolbox
    dev-qt/qtcore
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
