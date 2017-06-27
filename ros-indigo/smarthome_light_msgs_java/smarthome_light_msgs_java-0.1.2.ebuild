# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="Java generation for smarthome_light_msgs package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/rosalfred-release/smarthome_light_msgs_java-release/archive/release/indigo/smarthome_light_msgs_java/0.1.2-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/genjava
    ros-indigo/rosjava_build_tools
"
DEPEND="${RDEPEND}
    ros-indigo/catkin
    ros-indigo/geometry_msgs
    ros-indigo/rosjava_messages
    ros-indigo/roslib
    ros-indigo/sensor_msgs
    ros-indigo/smarthome_light_msgs
    dev-python/rosdistro
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
