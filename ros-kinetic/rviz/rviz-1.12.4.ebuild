# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="3D visualization tool for ROS."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/rviz-release/archive/release/kinetic/rviz/1.12.4-0.tar.gz"

LICENSE="||( BSD Creative Commons )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/pluginlib
    ros-kinetic/image_transport
    ros-kinetic/rosconsole
    ros-kinetic/nav_msgs
    ros-kinetic/rosbag
    ros-kinetic/tf
    ros-kinetic/sensor_msgs
    ros-kinetic/interactive_markers
    ros-kinetic/roscpp
    ros-kinetic/roslib
    ros-kinetic/urdf
    ros-kinetic/python_qt_binding
    ros-kinetic/laser_geometry
    ros-kinetic/rospy
    ros-kinetic/resource_retriever
    ros-kinetic/geometry_msgs
    ros-kinetic/std_msgs
    ros-kinetic/map_msgs
    ros-kinetic/std_srvs
    ros-kinetic/media_export
    ros-kinetic/visualization_msgs
    ros-kinetic/message_filters
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
    source /${ROS_PREFIX}/setup.bash
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e ${D}/${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
