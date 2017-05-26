# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This unary stack contains the dynamic_reconfigure package which provides a means to change
    node parameters at any time without having to restart the node."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/dynamic_reconfigure-release/archive/release/kinetic/dynamic_reconfigure/1.5.48-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/rospy
    ros-kinetic/roslib
    ros-kinetic/rosservice
    ros-kinetic/roscpp
    ros-kinetic/message_runtime
    ros-kinetic/std_msgs
    dev-libs/boost
"
DEPEND="
    ros-kinetic/roscpp
    ros-kinetic/roscpp_serialization
    ros-kinetic/message_generation
    ros-kinetic/std_msgs
    ros-kinetic/rostest
    dev-libs/boost
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
