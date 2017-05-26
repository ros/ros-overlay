# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Basic diagnostic_aggregator tests are  in the"
HOMEPAGE="http://ros.org/wiki/test_diagnostic_aggregator"
SRC_URI="https://github.com/ros-gbp/diagnostics-release/archive/release/kinetic/test_diagnostic_aggregator/1.9.0-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/roscpp
    ros-kinetic/rospy
    ros-kinetic/diagnostic_aggregator
    ros-kinetic/diagnostic_msgs
    ros-kinetic/pluginlib
"
DEPEND="
    ros-kinetic/rospy
    ros-kinetic/diagnostic_aggregator
    ros-kinetic/diagnostic_msgs
    ros-kinetic/roscpp
    ros-kinetic/rostest
    ros-kinetic/pluginlib
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
