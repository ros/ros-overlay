# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="Flips the image of Care-O-bots kinect in dependence of the viewing direction of "
HOMEPAGE="http://wiki.ros.org/cob_image_flip"
SRC_URI="https://github.com/ipa320/cob_perception_common-release/archive/release/indigo/cob_image_flip/0.6.8-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/cmake_modules
    ros-indigo/cob_perception_msgs
    ros-indigo/cv_bridge
    ros-indigo/geometry_msgs
    ros-indigo/image_transport
    ros-indigo/nodelet
    ros-indigo/pcl_conversions
    ros-indigo/pcl_ros
    ros-indigo/roscpp
    ros-indigo/sensor_msgs
    ros-indigo/stereo_msgs
    ros-indigo/tf
    dev-libs/boost
    media-libs/opencv
"
DEPEND="${RDEPEND}
    ros-indigo/catkin
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
