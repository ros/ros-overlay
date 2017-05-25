# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://ros.org/wiki/roscpp"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/kinetic/roscpp/1.12.7-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/rosgraph_msgs
    ros-kinetic/rosconsole
    ros-kinetic/xmlrpcpp
    ros-kinetic/std_msgs
    ros-kinetic/message_runtime
    ros-kinetic/rostime
    ros-kinetic/roscpp_serialization
    ros-kinetic/roscpp_traits
    ros-kinetic/cpp_common

"
DEPEND="${RDEPEND}
    ros-kinetic/rosgraph_msgs
    ros-kinetic/rosconsole
    ros-kinetic/roslang
    ros-kinetic/xmlrpcpp
    ros-kinetic/std_msgs
    ros-kinetic/rostime
    ros-kinetic/roscpp_serialization
    ros-kinetic/roscpp_traits
    ros-kinetic/message_generation
    ros-kinetic/cpp_common
    ros-kinetic/pkg-config

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
