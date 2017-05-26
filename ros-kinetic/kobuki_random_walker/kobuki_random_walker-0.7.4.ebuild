# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Random walker app for Kobuki"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/kobuki-release/archive/release/kinetic/kobuki_random_walker/0.7.4-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/kobuki_msgs
    ros-kinetic/nodelet
    ros-kinetic/yocs_controllers
    ros-kinetic/yocs_cmd_vel_mux
    ros-kinetic/roscpp
    ros-kinetic/ecl_threads
    ros-kinetic/std_msgs
    ros-kinetic/geometry_msgs
    ros-kinetic/pluginlib
"
DEPEND="
    ros-kinetic/kobuki_msgs
    ros-kinetic/nodelet
    ros-kinetic/yocs_controllers
    ros-kinetic/roscpp
    ros-kinetic/ecl_threads
    ros-kinetic/std_msgs
    ros-kinetic/geometry_msgs
    ros-kinetic/pluginlib
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
