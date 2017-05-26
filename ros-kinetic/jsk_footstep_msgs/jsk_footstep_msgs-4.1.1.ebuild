# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="jsk_footstep_msgs"
HOMEPAGE="http://ros.org/wiki/jsk_footstep_msgs"
SRC_URI="https://github.com/tork-a/jsk_common_msgs-release/archive/release/kinetic/jsk_footstep_msgs/4.1.1-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/actionlib_msgs
    ros-kinetic/message_runtime
    ros-kinetic/geometry_msgs
"
DEPEND="
    ros-kinetic/actionlib_msgs
    ros-kinetic/message_generation
    ros-kinetic/geometry_msgs
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
