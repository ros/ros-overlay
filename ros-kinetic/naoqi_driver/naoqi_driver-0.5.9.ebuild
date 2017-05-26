# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Driver module between Aldebaran's NAOqiOS and ROS. It publishes all sensor and actuator data as well as basic diagnostic for battery, temperature. It subscribes also to RVIZ simple goal and cmd_vel for teleop."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-naoqi/naoqi_driver-release/archive/release/kinetic/naoqi_driver/0.5.9-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/orocos_kdl
    ros-kinetic/image_transport
    ros-kinetic/kdl_parser
    ros-kinetic/cv_bridge
    ros-kinetic/naoqi_libqicore
    ros-kinetic/rosbag_storage
    ros-kinetic/naoqi_bridge_msgs
    ros-kinetic/tf2_ros
    ros-kinetic/robot_state_publisher
    ros-kinetic/naoqi_libqi
    dev-libs/boost
"
DEPEND="
    ros-kinetic/orocos_kdl
    ros-kinetic/rosgraph_msgs
    ros-kinetic/image_transport
    ros-kinetic/tf2_geometry_msgs
    ros-kinetic/kdl_parser
    ros-kinetic/tf2_msgs
    ros-kinetic/diagnostic_updater
    ros-kinetic/diagnostic_msgs
    ros-kinetic/cv_bridge
    ros-kinetic/sensor_msgs
    ros-kinetic/naoqi_libqicore
    ros-kinetic/rosbag_storage
    ros-kinetic/naoqi_bridge_msgs
    ros-kinetic/geometry_msgs
    ros-kinetic/tf2_ros
    ros-kinetic/robot_state_publisher
    ros-kinetic/naoqi_libqi
    dev-libs/boost
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
