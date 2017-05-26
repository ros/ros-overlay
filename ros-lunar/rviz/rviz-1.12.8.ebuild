# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="3D visualization tool for ROS."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/rviz-release/archive/release/lunar/rviz/1.12.8-0.tar.gz"

LICENSE="UNKNOWN"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/map_msgs
    ros-lunar/visualization_msgs
    ros-lunar/rospy
    ros-lunar/sensor_msgs
    ros-lunar/std_srvs
    ros-lunar/pluginlib
    ros-lunar/laser_geometry
    ros-lunar/urdf
    ros-lunar/roslib
    ros-lunar/rosconsole
    ros-lunar/media_export
    ros-lunar/interactive_markers
    ros-lunar/python_qt_binding
    ros-lunar/message_filters
    ros-lunar/roscpp
    ros-lunar/std_msgs
    ros-lunar/image_transport
    ros-lunar/rosbag
    ros-lunar/resource_retriever
    ros-lunar/nav_msgs
    ros-lunar/geometry_msgs
    ros-lunar/tf
    dev-games/ogre
    media-libs/mesa
    dev-cpp/eigen
    dev-qt/qtgui
    dev-qt/qtopengl
    dev-cpp/yaml-cpp
    dev-qt/qtcore
    dev-libs/tinyxml
    dev-qt/qtwidgets
    dev-libs/urdfdom_headers
    media-libs/assimp
"
DEPEND="
    ros-lunar/map_msgs
    ros-lunar/visualization_msgs
    ros-lunar/rospy
    ros-lunar/sensor_msgs
    ros-lunar/std_srvs
    ros-lunar/pluginlib
    ros-lunar/cmake_modules
    ros-lunar/laser_geometry
    ros-lunar/urdf
    ros-lunar/roslib
    ros-lunar/rosconsole
    ros-lunar/interactive_markers
    ros-lunar/python_qt_binding
    ros-lunar/message_filters
    ros-lunar/roscpp
    ros-lunar/std_msgs
    ros-lunar/image_transport
    ros-lunar/rosbag
    ros-lunar/resource_retriever
    ros-lunar/nav_msgs
    ros-lunar/geometry_msgs
    ros-lunar/tf
    dev-games/ogre
    dev-qt/qtcore
    media-libs/mesa
    dev-cpp/eigen
    dev-cpp/yaml-cpp
    media-libs/assimp
    dev-libs/tinyxml
    dev-libs/urdfdom_headers
    dev-qt/qtopengl
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
