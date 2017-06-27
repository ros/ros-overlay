# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="Common plugins for the Mapviz visualization tool"
HOMEPAGE="https://github.com/swri-robotics/mapviz"
SRC_URI="https://github.com/swri-robotics-gbp/mapviz-release/archive/release/indigo/mapviz_plugins/0.0.7-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/cv_bridge
    ros-indigo/gps_common
    ros-indigo/image_transport
    ros-indigo/mapviz
    ros-indigo/marti_common_msgs
    ros-indigo/marti_nav_msgs
    ros-indigo/marti_visualization_msgs
    ros-indigo/nav_msgs
    ros-indigo/pluginlib
    ros-indigo/roscpp
    ros-indigo/sensor_msgs
    ros-indigo/std_msgs
    ros-indigo/stereo_msgs
    ros-indigo/swri_image_util
    ros-indigo/swri_math_util
    ros-indigo/swri_route_util
    ros-indigo/swri_transform_util
    ros-indigo/swri_yaml_util
    ros-indigo/tf
    ros-indigo/visualization_msgs
    dev-qt/qtcore:4
    dev-qt/qtopengl:4
    dev-qt/qtcore:4
"
DEPEND="${RDEPEND}
    ros-indigo/catkin
    dev-qt/qtcore:4
    dev-qt/qtopengl:4
"

SLOT="0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/indigo"

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
        -DPYTHON_INSTALL_DIR=lib64/python3.5/site-packages
        -DCATKIN_ENABLE_TESTING=OFF
        -DPYTHON_EXECUTABLE=/usr/bin/ros-python-indigo
        -DCATKIN_BUILD_BINARY_PACAKGE=1

     )
    cmake-utils_src_configure
}

src_install() {
    cd ${WORKDIR}/${P}_build
    make install || die
}
