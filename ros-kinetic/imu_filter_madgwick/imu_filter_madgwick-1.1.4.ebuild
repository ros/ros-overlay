# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Filter which fuses angular velocities, accelerations, and (optionally) magnetic readings from a generic IMU device into an orientation. Based on code by Sebastian Madgwick, http://www.x-io.co.uk/node/8#open_source_ahrs_and_imu_algorithms."
HOMEPAGE="http://ros.org/wiki/imu_filter_madgwick"
SRC_URI="https://github.com/uos-gbp/imu_tools-release/archive/release/kinetic/imu_filter_madgwick/1.1.4-0.tar.gz"

LICENSE="GPL"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/tf2_geometry_msgs
    ros-kinetic/nodelet
    ros-kinetic/sensor_msgs
    ros-kinetic/message_filters
    ros-kinetic/tf2
    ros-kinetic/roscpp
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/tf2_ros
    ros-kinetic/geometry_msgs
    ros-kinetic/pluginlib
"
DEPEND="
    ros-kinetic/tf2_geometry_msgs
    ros-kinetic/nodelet
    ros-kinetic/sensor_msgs
    ros-kinetic/message_filters
    ros-kinetic/tf2
    ros-kinetic/roscpp
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/tf2_ros
    ros-kinetic/geometry_msgs
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
