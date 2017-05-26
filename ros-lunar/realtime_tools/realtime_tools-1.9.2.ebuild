# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Contains a set of tools that can be used from a hard
    realtime thread, without breaking the realtime behavior.  The
    tools currently only provides the realtime publisher, which makes
    it possible to publish messages to a ROS topic from a realtime
    thread. We plan to add a basic implementation of a realtime
    buffer, to make it possible to get data from a (non-realtime)
    topic callback into the realtime loop. Once the lockfree buffer is
    created, the realtime publisher will start using it, which will
    result in major API changes for the realtime publisher (removal of
    all lock methods)."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/realtime_tools-release/archive/release/lunar/realtime_tools/1.9.2-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/roscpp
    ros-lunar/rospy
"
DEPEND="
    ros-lunar/roscpp
    ros-lunar/rospy
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
