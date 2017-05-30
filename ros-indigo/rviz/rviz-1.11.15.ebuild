# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="3D visualization tool for ROS."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/rviz-release/archive/release/indigo/rviz/1.11.15-0.tar.gz"

LICENSE="|| ( BSD Creative Commons )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/nav_msgs
    ros-indigo/laser_geometry
    ros-indigo/roslib
    ros-indigo/map_msgs
    ros-indigo/std_msgs
    ros-indigo/python_qt_binding
    ros-indigo/image_transport
    ros-indigo/rosbag
    ros-indigo/sensor_msgs
    ros-indigo/resource_retriever
    ros-indigo/rospy
    ros-indigo/media_export
    ros-indigo/roscpp
    ros-indigo/urdf
    ros-indigo/std_srvs
    ros-indigo/tf
    ros-indigo/rosconsole
    ros-indigo/visualization_msgs
    ros-indigo/image_geometry
    ros-indigo/pluginlib
    ros-indigo/geometry_msgs
    ros-indigo/message_filters
    ros-indigo/interactive_markers
    dev-cpp/eigen
    media-libs/mesa
    dev-cpp/yaml-cpp
    dev-qt/qtopengl
    dev-qt/qtcore
    dev-libs/tinyxml
    media-libs/assimp
    dev-games/ogre
"
DEPEND="${RDEPEND}
    ros-indigo/cmake_modules
    media-libs/assimp
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/indigo"

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
