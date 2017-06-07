# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="Common plugins for the Mapviz visualization tool"
HOMEPAGE="https://github.com/swri-robotics/mapviz"
SRC_URI="https://github.com/swri-robotics-gbp/mapviz-release/archive/release/kinetic/mapviz_plugins/0.2.3-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-kinetic/cv_bridge
    ros-kinetic/image_transport
    ros-kinetic/mapviz
    ros-kinetic/marti_common_msgs
    ros-kinetic/marti_nav_msgs
    ros-kinetic/marti_visualization_msgs
    ros-kinetic/nav_msgs
    ros-kinetic/pluginlib
    ros-kinetic/roscpp
    ros-kinetic/sensor_msgs
    ros-kinetic/std_msgs
    ros-kinetic/stereo_msgs
    ros-kinetic/swri_image_util
    ros-kinetic/swri_math_util
    ros-kinetic/swri_route_util
    ros-kinetic/swri_transform_util
    ros-kinetic/swri_yaml_util
    ros-kinetic/tf
    ros-kinetic/visualization_msgs
    dev-qt/qtcore:5
    dev-qt/qtgui:5
    dev-qt/qtopengl:5
    dev-qt/qtwidgets:5
"
DEPEND="${RDEPEND}
    ros-kinetic/catkin
    dev-qt/qtopengl:5
"

SLOT="0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/kinetic"

src_unpack() {
    default
    mv *${P}* ${P}
}

src_configure() {
    append-cxxflags "-std=c++11"
    export DEST_SETUP_DIR="/${ROS_PREFIX}"
    local mycmakeargs=(
        -DCMAKE_INSTALL_PREFIX=${D}${ROS_PREFIX}
        -DCMAKE_PREFIX_PATH=/${ROS_PREFIX}
        -DPYTHON_EXECUTABLE=/usr/bin/ros-python
        -DCATKIN_BUILD_BINARY_PACKAGE=1
     )
    cmake-utils_src_configure
}

src_install() {
    cd ${WORKDIR}/${P}_build
    make install || die
}
