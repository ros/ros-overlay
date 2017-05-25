# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/rviz-release/archive/release/kinetic/rviz/1.12.4-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/rosconsole
    ros-kinetic/liburdfdom-headers-dev
    ros-kinetic/eigen
    ros-kinetic/interactive_markers
    ros-kinetic/resource_retriever
    ros-kinetic/nav_msgs
    ros-kinetic/python_qt_binding
    ros-kinetic/laser_geometry
    ros-kinetic/roscpp
    ros-kinetic/opengl
    ros-kinetic/roslib
    ros-kinetic/yaml-cpp
    ros-kinetic/visualization_msgs
    ros-kinetic/tf
    ros-kinetic/libqt5-core
    ros-kinetic/libqt5-widgets
    ros-kinetic/urdf
    ros-kinetic/message_filters
    ros-kinetic/std_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/image_transport
    ros-kinetic/assimp
    ros-kinetic/rospy
    ros-kinetic/tinyxml
    ros-kinetic/map_msgs
    ros-kinetic/libqt5-opengl
    ros-kinetic/std_srvs
    ros-kinetic/pluginlib
    ros-kinetic/libogre-dev
    ros-kinetic/media_export
    ros-kinetic/libqt5-gui
    ros-kinetic/geometry_msgs
    ros-kinetic/rosbag

"
DEPEND="${RDEPEND}
    ros-kinetic/rosconsole
    ros-kinetic/liburdfdom-headers-dev
    ros-kinetic/eigen
    ros-kinetic/interactive_markers
    ros-kinetic/qtbase5-dev
    ros-kinetic/resource_retriever
    ros-kinetic/cmake_modules
    ros-kinetic/nav_msgs
    ros-kinetic/python_qt_binding
    ros-kinetic/laser_geometry
    ros-kinetic/roscpp
    ros-kinetic/opengl
    ros-kinetic/roslib
    ros-kinetic/yaml-cpp
    ros-kinetic/visualization_msgs
    ros-kinetic/tf
    ros-kinetic/libqt5-opengl-dev
    ros-kinetic/urdf
    ros-kinetic/message_filters
    ros-kinetic/std_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/image_transport
    ros-kinetic/rospy
    ros-kinetic/tinyxml
    ros-kinetic/map_msgs
    ros-kinetic/std_srvs
    ros-kinetic/pluginlib
    ros-kinetic/libogre-dev
    ros-kinetic/assimp-dev
    ros-kinetic/geometry_msgs
    ros-kinetic/rosbag

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
