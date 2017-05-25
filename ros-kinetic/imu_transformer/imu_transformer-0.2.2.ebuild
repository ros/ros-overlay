# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/imu_pipeline-release/archive/release/kinetic/imu_transformer/0.2.2-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/roslaunch
    ros-kinetic/roscpp
    ros-kinetic/message_filters
    ros-kinetic/sensor_msgs
    ros-kinetic/tf2_sensor_msgs
    ros-kinetic/topic_tools
    ros-kinetic/geometry_msgs
    ros-kinetic/tf2_ros
    ros-kinetic/tf
    ros-kinetic/nodelet
    ros-kinetic/tf2

"
DEPEND="${RDEPEND}
    ros-kinetic/roslaunch
    ros-kinetic/roscpp
    ros-kinetic/message_filters
    ros-kinetic/sensor_msgs
    ros-kinetic/tf2_sensor_msgs
    ros-kinetic/topic_tools
    ros-kinetic/geometry_msgs
    ros-kinetic/tf2_ros
    ros-kinetic/nodelet
    ros-kinetic/tf2

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
