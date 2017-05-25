# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/rosflight/rosflight-release/archive/release/kinetic/rosflight/0.1.2-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/std_srvs
    ros-kinetic/roscpp
    ros-kinetic/std_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/geometry_msgs
    ros-kinetic/yaml-cpp
    ros-kinetic/tf
    ros-kinetic/rosflight_msgs
    ros-kinetic/boost
    ros-kinetic/eigen

"
DEPEND="${RDEPEND}
    ros-kinetic/git
    ros-kinetic/std_srvs
    ros-kinetic/roscpp
    ros-kinetic/std_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/geometry_msgs
    ros-kinetic/yaml-cpp
    ros-kinetic/tf
    ros-kinetic/rosflight_msgs
    ros-kinetic/boost
    ros-kinetic/eigen

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
