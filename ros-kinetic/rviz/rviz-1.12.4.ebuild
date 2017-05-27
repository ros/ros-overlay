# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="3D visualization tool for ROS."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/rviz-release/archive/release/kinetic/rviz/1.12.4-0.tar.gz"

LICENSE="UNKNOWN"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/media_export
    ros-kinetic/laser_geometry
    ros-kinetic/rosconsole
    ros-kinetic/roslib
    ros-kinetic/rospy
    ros-kinetic/sensor_msgs
    ros-kinetic/roscpp
    ros-kinetic/interactive_markers
    ros-kinetic/tf
    ros-kinetic/visualization_msgs
    ros-kinetic/map_msgs
    ros-kinetic/urdf
    ros-kinetic/geometry_msgs
    ros-kinetic/std_msgs
    ros-kinetic/image_transport
    ros-kinetic/resource_retriever
    ros-kinetic/nav_msgs
    ros-kinetic/pluginlib
    ros-kinetic/message_filters
    ros-kinetic/python_qt_binding
    ros-kinetic/rosbag
    ros-kinetic/std_srvs
    media-libs/mesa
    dev-cpp/yaml-cpp
    dev-qt/qtcore
    dev-qt/qtopengl
    dev-games/ogre
    dev-libs/tinyxml
    dev-libs/urdfdom_headers
    media-libs/assimp
    dev-qt/qtwidgets
    dev-cpp/eigen
    dev-qt/qtgui
"
DEPEND="${RDEPEND}
    ros-kinetic/cmake_modules
    dev-qt/qtcore
    dev-qt/qtopengl
    media-libs/assimp
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/kinetic"

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
    source /opt/ros/kinetic/setup.bash
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
    rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
}
