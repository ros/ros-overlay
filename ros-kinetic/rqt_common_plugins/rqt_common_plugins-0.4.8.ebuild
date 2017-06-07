# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/rqt_common_plugins-release/archive/release/kinetic/rqt_common_plugins/0.4.8-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-kinetic/rqt_action
    ros-kinetic/rqt_bag
    ros-kinetic/rqt_bag_plugins
    ros-kinetic/rqt_console
    ros-kinetic/rqt_dep
    ros-kinetic/rqt_graph
    ros-kinetic/rqt_image_view
    ros-kinetic/rqt_launch
    ros-kinetic/rqt_logger_level
    ros-kinetic/rqt_msg
    ros-kinetic/rqt_plot
    ros-kinetic/rqt_publisher
    ros-kinetic/rqt_py_common
    ros-kinetic/rqt_py_console
    ros-kinetic/rqt_reconfigure
    ros-kinetic/rqt_service_caller
    ros-kinetic/rqt_shell
    ros-kinetic/rqt_srv
    ros-kinetic/rqt_top
    ros-kinetic/rqt_topic
    ros-kinetic/rqt_web
"
DEPEND="${RDEPEND}
    ros-kinetic/catkin
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
        -DPYTHON_INSTALL_DIR=lib64/site-packages/python3.5        -DPYTHON_EXECUTABLE=/usr/bin/ros-python
        -DCATKIN_BUILD_BINARY_PACKAGE=1
     )
    cmake-utils_src_configure
}

src_install() {
    cd ${WORKDIR}/${P}_build
    make install || die
}
