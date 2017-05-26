# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Tools for directing, throttling, selecting, and otherwise messing with
    ROS topics at a meta level. None of the programs in this package actually
    know about the topics whose streams they are altering; instead, these
    tools deal with messages as generic binary blobs. This means they can be
    applied to any ROS topic."
HOMEPAGE="http://ros.org/wiki/topic_tools"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/lunar/topic_tools/1.13.0-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/roscpp
    ros-lunar/std_msgs
    ros-lunar/message_runtime
    ros-lunar/rosconsole
    ros-lunar/rostime
    ros-lunar/xmlrpcpp
"
DEPEND="${RDEPEND}
    ros-lunar/rostest
    ros-lunar/message_generation
    ros-lunar/cpp_common
    ros-lunar/rosunit
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
    cd ../../work
    source /opt/ros/lunar/setup.bash
    catkin_make_isolated --install --install-space="${D}" || die
}

pkg_postinst() {
    cd ${D}
    cp -R lib* /opt/ros/lunar
    cp -R share /opt/ros/lunar
    cp -R bin /opt/ros/lunar
    cp -R include /opt/ros/lunar
}
