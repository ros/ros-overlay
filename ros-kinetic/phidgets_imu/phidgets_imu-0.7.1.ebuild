# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/kinetic/phidgets_imu/0.7.1-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/std_srvs
    ros-kinetic/roscpp
    ros-kinetic/pluginlib
    ros-kinetic/std_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/diagnostic_msgs
    ros-kinetic/diagnostic_updater
    ros-kinetic/imu_filter_madgwick
    ros-kinetic/tf
    ros-kinetic/nodelet
    ros-kinetic/phidgets_api

"
DEPEND="${RDEPEND}
    ros-kinetic/std_srvs
    ros-kinetic/roscpp
    ros-kinetic/pluginlib
    ros-kinetic/std_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/diagnostic_msgs
    ros-kinetic/diagnostic_updater
    ros-kinetic/tf
    ros-kinetic/nodelet
    ros-kinetic/phidgets_api

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
