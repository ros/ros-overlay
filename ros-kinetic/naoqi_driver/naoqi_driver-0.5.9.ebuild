# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-naoqi/naoqi_driver-release/archive/release/kinetic/naoqi_driver/0.5.9-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/naoqi_libqicore
    ros-kinetic/naoqi_libqi
    ros-kinetic/naoqi_bridge_msgs
    ros-kinetic/boost
    ros-kinetic/robot_state_publisher
    ros-kinetic/kdl_parser
    ros-kinetic/image_transport
    ros-kinetic/tf2_ros
    ros-kinetic/orocos_kdl
    ros-kinetic/cv_bridge
    ros-kinetic/rosbag_storage

"
DEPEND="${RDEPEND}
    ros-kinetic/naoqi_libqicore
    ros-kinetic/rosgraph_msgs
    ros-kinetic/naoqi_libqi
    ros-kinetic/tf2_geometry_msgs
    ros-kinetic/naoqi_bridge_msgs
    ros-kinetic/boost
    ros-kinetic/robot_state_publisher
    ros-kinetic/sensor_msgs
    ros-kinetic/kdl_parser
    ros-kinetic/image_transport
    ros-kinetic/tf2_msgs
    ros-kinetic/diagnostic_updater
    ros-kinetic/geometry_msgs
    ros-kinetic/tf2_ros
    ros-kinetic/orocos_kdl
    ros-kinetic/cv_bridge
    ros-kinetic/diagnostic_msgs
    ros-kinetic/rosbag_storage

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
