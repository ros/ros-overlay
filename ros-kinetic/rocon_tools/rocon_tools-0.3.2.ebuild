# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Utilities and tools developed for rocon, but usable beyond the boundaries
    of rocon."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/rocon_tools-release/archive/release/kinetic/rocon_tools/0.3.2-1.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/rocon_console
    ros-kinetic/rocon_python_redis
    ros-kinetic/rocon_python_wifi
    ros-kinetic/rocon_python_utils
    ros-kinetic/rocon_launch
    ros-kinetic/rocon_ebnf
    ros-kinetic/rocon_master_info
    ros-kinetic/rocon_interactions
    ros-kinetic/rocon_uri
    ros-kinetic/rocon_semantic_version
    ros-kinetic/rocon_python_comms
"
DEPEND="
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
