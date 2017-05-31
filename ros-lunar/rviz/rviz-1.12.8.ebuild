# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="3D visualization tool for ROS."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/rviz-release/archive/release/lunar/rviz/1.12.8-0.tar.gz"

LICENSE="|| ( BSD Creative Commons )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/rosbag
    ros-lunar/std_msgs
    ros-lunar/roscpp
    ros-lunar/roslib
    ros-lunar/resource_retriever
    ros-lunar/python_qt_binding
    ros-lunar/visualization_msgs
    ros-lunar/map_msgs
    ros-lunar/tf
    ros-lunar/laser_geometry
    ros-lunar/interactive_markers
    ros-lunar/pluginlib
    ros-lunar/geometry_msgs
    ros-lunar/std_srvs
    ros-lunar/nav_msgs
    ros-lunar/urdf
    ros-lunar/sensor_msgs
    ros-lunar/rospy
    ros-lunar/rosconsole
    ros-lunar/image_transport
    ros-lunar/media_export
    ros-lunar/message_filters
    dev-qt/qtwidgets
    dev-qt/qtcore
    dev-libs/tinyxml
    dev-qt/qtgui
    media-libs/assimp
    dev-cpp/eigen
    dev-games/ogre
    media-libs/mesa
    dev-libs/urdfdom_headers
    dev-cpp/yaml-cpp
    dev-qt/qtopengl
"
DEPEND="${RDEPEND}
    ros-lunar/cmake_modules
    media-libs/assimp
    dev-qt/qtcore
    dev-qt/qtopengl
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
    source /${ROS_PREFIX}/setup.bash
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
