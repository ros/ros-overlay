# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/audio_common-release/archive/release/indigo/sound_play/0.2.12-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/actionlib_msgs
    ros-indigo/audio_common_msgs
    ros-indigo/diagnostic_msgs
    ros-indigo/message_runtime
    ros-indigo/roscpp
    ros-indigo/roslib
    ros-indigo/rospy
    app-accessibility/festival
    media-libs/gst-plugins-good:0.10
    media-libs/gst-plugins-ugly:0.10
    media-libs/gst-plugins-base:0.10
    media-libs/gstreamer:0.10
    dev-python/gst-python
"
DEPEND="${RDEPEND}
    ros-indigo/actionlib
    ros-indigo/catkin
    ros-indigo/message_generation
    media-libs/gst-plugins-base:0.10
    media-libs/gstreamer:0.10
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
        -DCATKIN_BUILD_BINARY_PACKAGE=1
     )
    cmake-utils_src_configure
}

src_install() {
    cd ${WORKDIR}/${P}_build
    make install || die
}
