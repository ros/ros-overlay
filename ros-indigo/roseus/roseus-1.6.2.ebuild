# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="EusLisp client for ROs Robot Operating System."
HOMEPAGE="http://pr.willowgarage.com/wiki/roseus"
SRC_URI="https://github.com/tork-a/jsk_roseus-release/archive/release/indigo/roseus/1.6.2-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/actionlib
    ros-indigo/actionlib_msgs
    ros-indigo/actionlib_tutorials
    ros-indigo/dynamic_reconfigure
    ros-indigo/euslisp
    ros-indigo/geneus
    ros-indigo/geometry_msgs
    ros-indigo/jskeus
    ros-indigo/message_runtime
    ros-indigo/rosbash
    ros-indigo/roscpp
    ros-indigo/roslang
    ros-indigo/rosmsg
    ros-indigo/rosnode
    ros-indigo/rospack
    ros-indigo/rostest
    ros-indigo/sensor_msgs
    ros-indigo/std_msgs
    ros-indigo/std_srvs
    ros-indigo/tf
    ros-indigo/tf2_ros
    ros-indigo/visualization_msgs
"
DEPEND="${RDEPEND}
    ros-indigo/angles
    ros-indigo/catkin
    ros-indigo/message_generation
    ros-indigo/mk
    ros-indigo/rosbuild
    ros-indigo/rostopic
    sys-apps/coreutils
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
