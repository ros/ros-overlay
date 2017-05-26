# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="3D visualization tool for ROS."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/rviz-release/archive/release/lunar/rviz/1.12.8-0.tar.gz"

LICENSE="UNKNOWN"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/pluginlib
    ros-lunar/rosconsole
    ros-lunar/std_srvs
    ros-lunar/roslib
    ros-lunar/geometry_msgs
    ros-lunar/std_msgs
    ros-lunar/resource_retriever
    ros-lunar/sensor_msgs
    ros-lunar/roscpp
    ros-lunar/rospy
    ros-lunar/rosbag
    ros-lunar/tf
    ros-lunar/visualization_msgs
    ros-lunar/laser_geometry
    ros-lunar/message_filters
    ros-lunar/urdf
    ros-lunar/python_qt_binding
    ros-lunar/map_msgs
    ros-lunar/image_transport
    ros-lunar/media_export
    ros-lunar/nav_msgs
    ros-lunar/interactive_markers
    dev-libs/tinyxml
    dev-qt/qtopengl
    media-libs/assimp
    dev-libs/urdfdom_headers
    dev-qt/qtgui
    dev-cpp/eigen
    dev-qt/qtwidgets
    dev-qt/qtcore
    dev-games/ogre
    dev-cpp/yaml-cpp
    media-libs/mesa
"
DEPEND="${RDEPEND}
    ros-lunar/cmake_modules
    dev-qt/qtopengl
    media-libs/assimp
    dev-qt/qtcore
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
    cd ../../work
    source /opt/ros/lunar/setup.bash
    catkin_make_isolated --install --install-space="${D}" || die
}

pkg_postinst() {
    cd ${D}
    cp -R lib* /opt/ros/lunar
    cp -R share /opt/ros/lunar
    cp -R bin /opt/ros/lunar
    cp -R include /opt/ros/lunar
}
