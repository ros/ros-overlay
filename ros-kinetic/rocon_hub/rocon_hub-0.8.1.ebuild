# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/rocon_multimaster-release/archive/release/kinetic/rocon_hub/0.8.1-2.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/rocon_gateway
    ros-kinetic/std_srvs
    ros-kinetic/rosgraph
    ros-kinetic/rocon_semantic_version
    ros-kinetic/rocon_python_redis
    ros-kinetic/avahi-utils
    ros-kinetic/avahi-daemon
    ros-kinetic/rocon_python_comms
    ros-kinetic/redis-server
    ros-kinetic/rocon_console

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
