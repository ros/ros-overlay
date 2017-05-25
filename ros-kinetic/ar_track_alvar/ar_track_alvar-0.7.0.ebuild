# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://ros.org/wiki/ar_track_alvar"
SRC_URI="https://github.com/ros-gbp/ar_track_alvar-release/archive/release/kinetic/ar_track_alvar/0.7.0-1.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/pcl_conversions
    ros-kinetic/roscpp
    ros-kinetic/ar_track_alvar_msgs
    ros-kinetic/std_msgs
    ros-kinetic/message_runtime
    ros-kinetic/sensor_msgs
    ros-kinetic/resource_retriever
    ros-kinetic/image_transport
    ros-kinetic/geometry_msgs
    ros-kinetic/tinyxml
    ros-kinetic/visualization_msgs
    ros-kinetic/tf
    ros-kinetic/rospy
    ros-kinetic/tf2
    ros-kinetic/cv_bridge
    ros-kinetic/pcl_ros

"
DEPEND="${RDEPEND}
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/pcl_conversions
    ros-kinetic/roscpp
    ros-kinetic/ar_track_alvar_msgs
    ros-kinetic/std_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/resource_retriever
    ros-kinetic/image_transport
    ros-kinetic/tf
    ros-kinetic/cmake_modules
    ros-kinetic/geometry_msgs
    ros-kinetic/tinyxml
    ros-kinetic/visualization_msgs
    ros-kinetic/message_generation
    ros-kinetic/rospy
    ros-kinetic/tf2
    ros-kinetic/cv_bridge
    ros-kinetic/pcl_ros

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
