# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="3D visualization tool for ROS."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/rviz-release/archive/release/kinetic/rviz/1.12.4-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="|| ( "BSD" "Creative Commons" )"
KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-kinetic/geometry_msgs
    ros-kinetic/image_transport
    ros-kinetic/interactive_markers
    ros-kinetic/laser_geometry
    ros-kinetic/map_msgs
    ros-kinetic/media_export
    ros-kinetic/message_filters
    ros-kinetic/nav_msgs
    ros-kinetic/pluginlib
    ros-kinetic/python_qt_binding
    ros-kinetic/resource_retriever
    ros-kinetic/rosbag
    ros-kinetic/rosconsole
    ros-kinetic/roscpp
    ros-kinetic/roslib
    ros-kinetic/rospy
    ros-kinetic/sensor_msgs
    ros-kinetic/std_msgs
    ros-kinetic/std_srvs
    ros-kinetic/tf
    ros-kinetic/urdf
    ros-kinetic/visualization_msgs
    media-libs/assimp
    dev-cpp/eigen
    dev-games/ogre
    dev-qt/qtcore
    dev-qt/qtgui
    dev-qt/qtopengl
    dev-qt/qtwidgets
    dev-libs/urdfdom_headers
    media-libs/mesa
    dev-libs/tinyxml
    dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
    ros-kinetic/catkin
    ros-kinetic/cmake_modules
    media-libs/assimp
    dev-qt/qtopengl
    dev-qt/qtcore
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/kinetic"

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
    cd ../../work
    source /${ROS_PREFIX}/setup.bash
    export PYTHONPATH="/${ROS_PREFIX}/lib/python3.5/site-packages:${PYTHONPATH}"    export PYTHONPATH="/${ROS_PREFIX}/lib64/python3.5/site-packages:${PYTHONPATH}"    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
