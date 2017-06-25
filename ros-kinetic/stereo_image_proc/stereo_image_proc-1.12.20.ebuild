# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="Stereo and single image rectification and disparity processing."
HOMEPAGE="http://www.ros.org/wiki/stereo_image_proc"
SRC_URI="https://github.com/ros-gbp/image_pipeline-release/archive/release/kinetic/stereo_image_proc/1.12.20-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-kinetic/cv_bridge
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/image_geometry
    ros-kinetic/image_proc
    ros-kinetic/image_transport
    ros-kinetic/message_filters
    ros-kinetic/nodelet
    ros-kinetic/sensor_msgs
    ros-kinetic/stereo_msgs
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
    cd ${P}
    EPATCH_SOURCE="${FILESDIR}"EPATCH_SUFFIX="patch" \
                 EPATCH_FORCE="yes" epatch
}

src_configure() {
    append-cxxflags "-std=c++11"
    export DEST_SETUP_DIR="/${ROS_PREFIX}"
    local mycmakeargs=(
        -DCMAKE_INSTALL_PREFIX=${D}${ROS_PREFIX}
        -DCMAKE_PREFIX_PATH=/${ROS_PREFIX}
        -DPYTHON_INSTALL_DIR=lib64/python3.5/site-packages
        -DCATKIN_ENABLE_TESTING=OFF
        -DPYTHON_EXECUTABLE=/usr/bin/ros-python-kinetic
        -DCATKIN_BUILD_BINARY_PACAKGE=1

     )
    cmake-utils_src_configure
}

src_install() {
    cd ${WORKDIR}/${P}_build
    make install || die
}
