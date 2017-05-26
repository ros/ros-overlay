# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This package provides tele-operation nodes to control the Neuronics Katana 450 arm via keyboard commands or with a playstation 3 controller."
HOMEPAGE="http://ros.org/wiki/katana_teleop"
SRC_URI="https://github.com/uos-gbp/katana_driver-release/archive/release/lunar/katana_teleop/1.0.7-0.tar.gz"

LICENSE="GPL"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/control_msgs
    ros-lunar/katana_msgs
    ros-lunar/roscpp
    ros-lunar/sensor_msgs
    ros-lunar/actionlib
"
DEPEND="
    ros-lunar/control_msgs
    ros-lunar/katana_msgs
    ros-lunar/roscpp
    ros-lunar/sensor_msgs
    ros-lunar/actionlib
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
