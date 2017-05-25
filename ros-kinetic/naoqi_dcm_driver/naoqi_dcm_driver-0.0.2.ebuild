# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-naoqi/naoqi_dcm_driver-release/archive/release/kinetic/naoqi_dcm_driver/0.0.2-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/naoqi_libqicore
    ros-kinetic/hardware_interface
    ros-kinetic/roscpp
    ros-kinetic/controller_manager
    ros-kinetic/sensor_msgs
    ros-kinetic/std_msgs
    ros-kinetic/geometry_msgs
    ros-kinetic/tf
    ros-kinetic/rospy
    ros-kinetic/naoqi_libqi

"
DEPEND="${RDEPEND}
    ros-kinetic/naoqi_libqicore
    ros-kinetic/hardware_interface
    ros-kinetic/roscpp
    ros-kinetic/controller_manager
    ros-kinetic/sensor_msgs
    ros-kinetic/std_msgs
    ros-kinetic/diagnostic_updater
    ros-kinetic/geometry_msgs
    ros-kinetic/tf
    ros-kinetic/rospy
    ros-kinetic/diagnostic_msgs
    ros-kinetic/naoqi_libqi

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
