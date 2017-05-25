# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This package is a ROS wrapper for Alvar, an open source AR tag tracking library."
HOMEPAGE="http://ros.org/wiki/ar_track_alvar"
SRC_URI="https://github.com/ros-gbp/ar_track_alvar-release/archive/release/lunar/ar_track_alvar/0.7.0-0.tar.gz"

LICENSE="LGPL-2.1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/dynamic_reconfigure
    ros-lunar/pcl_conversions
    ros-lunar/roscpp
    ros-lunar/ar_track_alvar_msgs
    ros-lunar/std_msgs
    ros-lunar/message_runtime
    ros-lunar/sensor_msgs
    ros-lunar/resource_retriever
    ros-lunar/image_transport
    ros-lunar/geometry_msgs
    ros-lunar/visualization_msgs
    ros-lunar/tf
    ros-lunar/rospy
    ros-lunar/tf2
    ros-lunar/cv_bridge
    ros-lunar/pcl_ros
    tinyxml
"
DEPEND="
    ros-lunar/dynamic_reconfigure
    ros-lunar/pcl_conversions
    ros-lunar/roscpp
    ros-lunar/ar_track_alvar_msgs
    ros-lunar/std_msgs
    ros-lunar/sensor_msgs
    ros-lunar/resource_retriever
    ros-lunar/image_transport
    ros-lunar/tf
    ros-lunar/cmake_modules
    ros-lunar/geometry_msgs
    ros-lunar/visualization_msgs
    ros-lunar/message_generation
    ros-lunar/rospy
    ros-lunar/tf2
    ros-lunar/cv_bridge
    ros-lunar/pcl_ros
    tinyxml
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
