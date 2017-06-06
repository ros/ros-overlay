# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This is a set of tools for recording from and playing back to ROS
    topics.  I"
HOMEPAGE="http://ros.org/wiki/rosbag"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/lunar/rosbag/1.13.0-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-lunar/genmsg
    ros-lunar/genpy
    ros-lunar/rosbag_storage
    ros-lunar/rosconsole
    ros-lunar/roscpp
    ros-lunar/roslib
    ros-lunar/rospy
    ros-lunar/std_srvs
    ros-lunar/topic_tools
    ros-lunar/xmlrpcpp
    dev-libs/boost
    dev-python/rospkg
"
DEPEND="${RDEPEND}
    ros-lunar/catkin
    ros-lunar/cpp_common
    ros-lunar/roscpp_serialization
    dev-python/pillow
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
    export DEST_SETUP_DIR=/${ROS_PREFIX}    local mycmakeargs=(
        -DCMAKE_INSTALL_PREFIX=${D}${ROS_PREFIX}
        -DCMAKE_PREFIX_PATH=/${ROS_PREFIX}
        -DCATKIN_BUILD_BINARY_PATCKAGE=1
     )
    cmake-utils_src_configure
}

src_install() {
    cd ${WORKDIR}/${P}/build
    make install || dieNone
}
