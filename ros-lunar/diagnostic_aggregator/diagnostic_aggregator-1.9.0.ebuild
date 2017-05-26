# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="diagnostic_aggregator"
HOMEPAGE="http://www.ros.org/wiki/diagnostic_aggregator"
SRC_URI="https://github.com/ros-gbp/diagnostics-release/archive/release/lunar/diagnostic_aggregator/1.9.0-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/roscpp
    ros-lunar/bondpy
    ros-lunar/diagnostic_msgs
    ros-lunar/rospy
    ros-lunar/bondcpp
    ros-lunar/xmlrpcpp
    ros-lunar/pluginlib
"
DEPEND="
    ros-lunar/roscpp
    ros-lunar/bondpy
    ros-lunar/diagnostic_msgs
    ros-lunar/rospy
    ros-lunar/rostest
    ros-lunar/bondcpp
    ros-lunar/xmlrpcpp
    ros-lunar/pluginlib
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
