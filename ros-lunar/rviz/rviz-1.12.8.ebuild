# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="3D visualization tool for ROS."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/rviz-release/archive/release/lunar/rviz/1.12.8-0.tar.gz"

LICENSE="||( BSD Creative Commons )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/pluginlib
    ros-lunar/image_transport
    ros-lunar/rosconsole
    ros-lunar/nav_msgs
    ros-lunar/rosbag
    ros-lunar/tf
    ros-lunar/sensor_msgs
    ros-lunar/interactive_markers
    ros-lunar/roscpp
    ros-lunar/roslib
    ros-lunar/urdf
    ros-lunar/python_qt_binding
    ros-lunar/laser_geometry
    ros-lunar/rospy
    ros-lunar/resource_retriever
    ros-lunar/geometry_msgs
    ros-lunar/std_msgs
    ros-lunar/map_msgs
    ros-lunar/std_srvs
    ros-lunar/media_export
    ros-lunar/visualization_msgs
    ros-lunar/message_filters
    media-libs/assimp
    dev-qt/qtcore
    dev-qt/qtwidgets
    media-libs/mesa
    dev-qt/qtgui
    dev-libs/tinyxml
    dev-qt/qtopengl
    dev-cpp/yaml-cpp
    dev-libs/urdfdom_headers
    dev-games/ogre
    dev-cpp/eigen
"
DEPEND="${RDEPEND}
    ros-lunar/cmake_modules
    dev-qt/qtcore
    dev-qt/qtopengl
    media-libs/assimp
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
    if [[ -e ${D}/${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
