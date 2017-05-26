# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="pr2eus"
HOMEPAGE="http://ros.org/wiki/pr2eus"
SRC_URI="https://github.com/tork-a/jsk_pr2eus-release/archive/release/kinetic/pr2eus/0.3.10-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/move_base_msgs
    ros-kinetic/pr2_msgs
    ros-kinetic/nav_msgs
    ros-kinetic/pr2_description
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/control_msgs
    ros-kinetic/rostest
    ros-kinetic/roseus
    ros-kinetic/sound_play
    ros-kinetic/euscollada
"
DEPEND="
    ros-kinetic/move_base_msgs
    ros-kinetic/rosgraph_msgs
    ros-kinetic/pr2_msgs
    ros-kinetic/nav_msgs
    ros-kinetic/pr2_description
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/control_msgs
    ros-kinetic/rostest
    ros-kinetic/roseus
    ros-kinetic/sound_play
    ros-kinetic/euscollada
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
