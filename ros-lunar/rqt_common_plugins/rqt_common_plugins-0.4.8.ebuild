# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/rqt_common_plugins-release/archive/release/lunar/rqt_common_plugins/0.4.8-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-lunar/rqt_action
    ros-lunar/rqt_bag
    ros-lunar/rqt_bag_plugins
    ros-lunar/rqt_console
    ros-lunar/rqt_dep
    ros-lunar/rqt_graph
    ros-lunar/rqt_image_view
    ros-lunar/rqt_launch
    ros-lunar/rqt_logger_level
    ros-lunar/rqt_msg
    ros-lunar/rqt_plot
    ros-lunar/rqt_publisher
    ros-lunar/rqt_py_common
    ros-lunar/rqt_py_console
    ros-lunar/rqt_reconfigure
    ros-lunar/rqt_service_caller
    ros-lunar/rqt_shell
    ros-lunar/rqt_srv
    ros-lunar/rqt_top
    ros-lunar/rqt_topic
    ros-lunar/rqt_web
"
DEPEND="${RDEPEND}
    ros-lunar/catkin
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="/opt/ros/lunar"

src_unpack() {
    default
    mv *${P}* ${P}
}

src_configure() {
    append-cxxflags "-std=c++11"
    export DEST_SETUP_DIR="${ROS_PREFIX}"
    local mycmakeargs=(
        -DCMAKE_INSTALL_PREFIX=${D%/}${ROS_PREFIX}
        -DCMAKE_PREFIX_PATH=${ROS_PREFIX}
        -DPYTHON_INSTALL_DIR=lib64/python3.5/site-packages
        -DCATKIN_ENABLE_TESTING=OFF
        -DPYTHON_EXECUTABLE=/usr/bin/ros-python-lunar
        -DCATKIN_BUILD_BINARY_PACAKGE=1

     )
    cmake-utils_src_configure
}

src_install() {
    cd ${WORKDIR}/${P}_build
    make install || die
}
