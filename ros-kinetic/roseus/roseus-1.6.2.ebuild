# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="EusLisp client for ROs Robot Operating System."
HOMEPAGE="http://pr.willowgarage.com/wiki/roseus"
SRC_URI="https://github.com/tork-a/jsk_roseus-release/archive/release/kinetic/roseus/1.6.2-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-kinetic/actionlib
    ros-kinetic/actionlib_msgs
    ros-kinetic/actionlib_tutorials
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/euslisp
    ros-kinetic/geneus
    ros-kinetic/geometry_msgs
    ros-kinetic/jskeus
    ros-kinetic/message_runtime
    ros-kinetic/rosbash
    ros-kinetic/roscpp
    ros-kinetic/roslang
    ros-kinetic/rosmsg
    ros-kinetic/rosnode
    ros-kinetic/rospack
    ros-kinetic/rostest
    ros-kinetic/sensor_msgs
    ros-kinetic/std_msgs
    ros-kinetic/std_srvs
    ros-kinetic/tf
    ros-kinetic/tf2_ros
    ros-kinetic/visualization_msgs
"
DEPEND="${RDEPEND}
    ros-kinetic/angles
    ros-kinetic/catkin
    ros-kinetic/message_generation
    ros-kinetic/mk
    ros-kinetic/rosbuild
    ros-kinetic/rostopic
    sys-apps/coreutils
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
