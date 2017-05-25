# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="3D visualization tool for ROS."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/rviz-release/archive/release/lunar/rviz/1.12.8-0.tar.gz"

LICENSE="UNKNOWN"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/rosconsole
    ros-lunar/interactive_markers
    ros-lunar/resource_retriever
    ros-lunar/nav_msgs
    ros-lunar/python_qt_binding
    ros-lunar/laser_geometry
    ros-lunar/roscpp
    ros-lunar/roslib
    ros-lunar/visualization_msgs
    ros-lunar/tf
    ros-lunar/urdf
    ros-lunar/message_filters
    ros-lunar/std_msgs
    ros-lunar/sensor_msgs
    ros-lunar/image_transport
    ros-lunar/rospy
    ros-lunar/map_msgs
    ros-lunar/std_srvs
    ros-lunar/pluginlib
    ros-lunar/media_export
    ros-lunar/geometry_msgs
    ros-lunar/rosbag
    liburdfdom-headers-dev
    eigen
    opengl
    yaml-cpp
    libqt5-core
    libqt5-widgets
    assimp
    tinyxml
    libqt5-opengl
    libogre-dev
    libqt5-gui
"
DEPEND="
    ros-lunar/rosconsole
    ros-lunar/interactive_markers
    ros-lunar/resource_retriever
    ros-lunar/cmake_modules
    ros-lunar/nav_msgs
    ros-lunar/python_qt_binding
    ros-lunar/laser_geometry
    ros-lunar/roscpp
    ros-lunar/roslib
    ros-lunar/visualization_msgs
    ros-lunar/tf
    ros-lunar/urdf
    ros-lunar/message_filters
    ros-lunar/std_msgs
    ros-lunar/sensor_msgs
    ros-lunar/image_transport
    ros-lunar/rospy
    ros-lunar/map_msgs
    ros-lunar/std_srvs
    ros-lunar/pluginlib
    ros-lunar/geometry_msgs
    ros-lunar/rosbag
    liburdfdom-headers-dev
    eigen
    qtbase5-dev
    opengl
    yaml-cpp
    libqt5-opengl-dev
    tinyxml
    libogre-dev
    assimp-dev
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
