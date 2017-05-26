# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Ros navigation utilities."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/kinetic/yocs_navi_toolkit/0.8.2-0.tar.gz"

LICENSE="Yujin Robot"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/costmap_2d
    ros-kinetic/base_local_planner
    ros-kinetic/nav_msgs
    ros-kinetic/roscpp
    ros-kinetic/ecl_build
    ros-kinetic/tf
    ros-kinetic/ecl_linear_algebra
"
DEPEND="
    ros-kinetic/costmap_2d
    ros-kinetic/base_local_planner
    ros-kinetic/nav_msgs
    ros-kinetic/roscpp
    ros-kinetic/ecl_build
    ros-kinetic/tf
    ros-kinetic/ecl_linear_algebra
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
