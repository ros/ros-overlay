# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://ros.org/wiki/roscpp"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/lunar/roscpp/1.13.0-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/rosgraph_msgs
    ros-lunar/rosconsole
    ros-lunar/xmlrpcpp
    ros-lunar/std_msgs
    ros-lunar/message_runtime
    ros-lunar/rostime
    ros-lunar/roscpp_serialization
    ros-lunar/roscpp_traits
    ros-lunar/cpp_common
"
DEPEND="
    ros-lunar/rosgraph_msgs
    ros-lunar/rosconsole
    ros-lunar/roslang
    ros-lunar/xmlrpcpp
    ros-lunar/std_msgs
    ros-lunar/rostime
    ros-lunar/roscpp_serialization
    ros-lunar/roscpp_traits
    ros-lunar/message_generation
    ros-lunar/cpp_common
    pkg-config
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
    source /opt/ros/lunar/setup.bash
    catkin_make_isolated --install --install-space="/opt/ros/lunar" || die
}
