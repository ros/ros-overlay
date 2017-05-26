# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Package containing the hardware interface to connect to Nao, Romeo, or Pepper robots."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-naoqi/naoqi_dcm_driver-release/archive/release/kinetic/naoqi_dcm_driver/0.0.2-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/hardware_interface
    ros-kinetic/rospy
    ros-kinetic/controller_manager
    ros-kinetic/sensor_msgs
    ros-kinetic/roscpp
    ros-kinetic/naoqi_libqicore
    ros-kinetic/tf
    ros-kinetic/std_msgs
    ros-kinetic/geometry_msgs
    ros-kinetic/naoqi_libqi
"
DEPEND="
    ros-kinetic/hardware_interface
    ros-kinetic/rospy
    ros-kinetic/controller_manager
    ros-kinetic/sensor_msgs
    ros-kinetic/diagnostic_msgs
    ros-kinetic/diagnostic_updater
    ros-kinetic/roscpp
    ros-kinetic/naoqi_libqicore
    ros-kinetic/tf
    ros-kinetic/std_msgs
    ros-kinetic/geometry_msgs
    ros-kinetic/naoqi_libqi
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
