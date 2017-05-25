# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/asmodehn/pyros-rosrelease/archive/release/kinetic/pyros/0.3.2-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/python-mock
    ros-kinetic/python-six
    ros-kinetic/std_srvs
    ros-kinetic/std_msgs
    ros-kinetic/rospy
    ros-kinetic/pyros_utils
    ros-kinetic/pyros_config
    ros-kinetic/pyzmp

"
DEPEND="${RDEPEND}
    ros-kinetic/python-mock
    ros-kinetic/python-six
    ros-kinetic/catkin_pip
    ros-kinetic/rostest
    ros-kinetic/rospy
    ros-kinetic/pyros_utils
    ros-kinetic/pyros_config
    ros-kinetic/pyzmp

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
