# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Provides service calls for getting ros meta-information, like list of
    topics, services, params, etc."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/RobotWebTools-release/rosbridge_suite-release/archive/release/kinetic/rosapi/0.7.17-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/message_runtime
    ros-kinetic/rospy
    ros-kinetic/rosbridge_library
    ros-kinetic/rosnode
    ros-kinetic/rosgraph
"
DEPEND="
    ros-kinetic/rospy
    ros-kinetic/message_generation
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
