# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="3D visualization tool for ROS."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/rviz-release/archive/release/lunar/rviz/1.12.8-0.tar.gz"

LICENSE="UNKNOWN"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/geometry_msgs
    ros-lunar/rospy
    ros-lunar/roslib
    ros-lunar/interactive_markers
    ros-lunar/roscpp
    ros-lunar/sensor_msgs
    ros-lunar/std_msgs
    ros-lunar/resource_retriever
    ros-lunar/media_export
    ros-lunar/visualization_msgs
    ros-lunar/urdf
    ros-lunar/rosbag
    ros-lunar/std_srvs
    ros-lunar/tf
    ros-lunar/python_qt_binding
    ros-lunar/image_transport
    ros-lunar/pluginlib
    ros-lunar/map_msgs
    ros-lunar/laser_geometry
    ros-lunar/message_filters
    ros-lunar/rosconsole
    ros-lunar/nav_msgs
    dev-games/ogre
    dev-libs/tinyxml
    dev-cpp/eigen
    dev-qt/qtwidgets
    media-libs/assimp
    dev-qt/qtopengl
    dev-cpp/yaml-cpp
    media-libs/mesa
    dev-qt/qtgui
    dev-libs/urdfdom_headers
    dev-qt/qtcore
"
DEPEND="${RDEPEND}
    ros-lunar/cmake_modules
    media-libs/assimp
    dev-qt/qtopengl
    dev-qt/qtcore
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/lunar"

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
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}"
    rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
    rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
}
