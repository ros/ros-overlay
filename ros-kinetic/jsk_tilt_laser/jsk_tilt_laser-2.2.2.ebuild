# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="The jsk_tilt_laser package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/jsk_common-release/archive/release/kinetic/jsk_tilt_laser/2.2.2-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/urg_node
    ros-kinetic/multisense_lib
    ros-kinetic/laser_filters
    ros-kinetic/sensor_msgs
    ros-kinetic/laser_assembler
    ros-kinetic/tf_conversions
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/tf
    ros-kinetic/robot_state_publisher
"
DEPEND="
    ros-kinetic/cmake_modules
    ros-kinetic/multisense_lib
    ros-kinetic/laser_filters
    ros-kinetic/sensor_msgs
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/tf
    ros-kinetic/laser_assembler
    ros-kinetic/tf_conversions
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
