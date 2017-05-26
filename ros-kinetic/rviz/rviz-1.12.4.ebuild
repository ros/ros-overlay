# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="3D visualization tool for ROS."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/rviz-release/archive/release/kinetic/rviz/1.12.4-0.tar.gz"

LICENSE="UNKNOWN"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/std_srvs
    ros-kinetic/sensor_msgs
    ros-kinetic/rosbag
    ros-kinetic/roscpp
    ros-kinetic/rospy
    ros-kinetic/laser_geometry
    ros-kinetic/nav_msgs
    ros-kinetic/visualization_msgs
    ros-kinetic/urdf
    ros-kinetic/image_transport
    ros-kinetic/message_filters
    ros-kinetic/roslib
    ros-kinetic/tf
    ros-kinetic/std_msgs
    ros-kinetic/geometry_msgs
    ros-kinetic/python_qt_binding
    ros-kinetic/media_export
    ros-kinetic/resource_retriever
    ros-kinetic/pluginlib
    ros-kinetic/interactive_markers
    ros-kinetic/rosconsole
    ros-kinetic/map_msgs
    dev-qt/qtgui
    media-libs/mesa
    media-libs/assimp
    dev-qt/qtwidgets
    dev-qt/qtopengl
    dev-libs/urdfdom_headers
    dev-qt/qtcore
    dev-libs/tinyxml
    dev-games/ogre
    dev-cpp/eigen
    dev-cpp/yaml-cpp
"
DEPEND="
    ros-kinetic/std_srvs
    ros-kinetic/sensor_msgs
    ros-kinetic/rosbag
    ros-kinetic/roscpp
    ros-kinetic/rospy
    ros-kinetic/laser_geometry
    ros-kinetic/nav_msgs
    ros-kinetic/visualization_msgs
    ros-kinetic/urdf
    ros-kinetic/cmake_modules
    ros-kinetic/image_transport
    ros-kinetic/message_filters
    ros-kinetic/roslib
    ros-kinetic/tf
    ros-kinetic/std_msgs
    ros-kinetic/geometry_msgs
    ros-kinetic/python_qt_binding
    ros-kinetic/resource_retriever
    ros-kinetic/pluginlib
    ros-kinetic/interactive_markers
    ros-kinetic/rosconsole
    ros-kinetic/map_msgs
    media-libs/mesa
    media-libs/assimp
    dev-qt/qtopengl
    dev-libs/urdfdom_headers
    dev-libs/tinyxml
    dev-games/ogre
    dev-cpp/eigen
    dev-qt/qtcore
    dev-cpp/yaml-cpp
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
