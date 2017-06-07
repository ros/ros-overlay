# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="A simple viewer for ROS image topics. Includes a specialized viewer
  for stereo"
HOMEPAGE="http://www.ros.org/wiki/image_view"
SRC_URI="https://github.com/ros-gbp/image_pipeline-release/archive/release/lunar/image_view/1.12.20-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-lunar/camera_calibration_parsers
    ros-lunar/cv_bridge
    ros-lunar/dynamic_reconfigure
    ros-lunar/image_transport
    ros-lunar/message_filters
    ros-lunar/nodelet
    ros-lunar/rosconsole
    ros-lunar/roscpp
    ros-lunar/std_srvs
    x11-libs/gtk+:2
"
DEPEND="${RDEPEND}
    ros-lunar/catkin
    ros-lunar/message_generation
    ros-lunar/sensor_msgs
    ros-lunar/stereo_msgs
"

SLOT="0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/lunar"

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
        -DPYTHON_INSTALL_DIR=lib64/site-packages/python3.5
        -DPYTHON_EXECUTABLE=/usr/bin/ros-python
        -DCATKIN_BUILD_BINARY_PACKAGE=1
     )
    cmake-utils_src_configure
}

src_install() {
    cd ${WORKDIR}/${P}_build
    make install || die
}
