# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/mavlink/mavros-release/archive/release/lunar/mavros_extras/0.19.0-0.tar.gz"

LICENSE="UNKNOWN"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/roscpp
    ros-lunar/sensor_msgs
    ros-lunar/mavros
    ros-lunar/urdf
    ros-lunar/std_msgs
    ros-lunar/mavros_msgs
    ros-lunar/geometry_msgs
    ros-lunar/visualization_msgs
    ros-lunar/tf
"
DEPEND="
    ros-lunar/roscpp
    ros-lunar/std_msgs
    ros-lunar/mavros
    ros-lunar/urdf
    ros-lunar/sensor_msgs
    ros-lunar/mavros_msgs
    ros-lunar/cmake_modules
    ros-lunar/geometry_msgs
    ros-lunar/visualization_msgs
    ros-lunar/tf
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
