# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="roseus_tutorials"
HOMEPAGE="http://ros.org/wiki/roseus_tutorials"
SRC_URI="https://github.com/tork-a/jsk_roseus-release/archive/release/indigo/roseus_tutorials/1.6.2-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/ar_track_alvar
    ros-indigo/checkerboard_detector
    ros-indigo/image_proc
    ros-indigo/image_view2
    ros-indigo/jsk_recognition_msgs
    ros-indigo/opencv_apps
    ros-indigo/posedetection_msgs
    ros-indigo/pr2eus
    ros-indigo/uvc_camera
    ros-indigo/visualization_msgs
"
DEPEND="${RDEPEND}
    ros-indigo/catkin
    ros-indigo/roseus
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
