# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="A metapackage to aggregate the packages required to use publish / subscribe, ser"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/metapackages-release/archive/release/lunar/ros_core/1.3.1-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-lunar/catkin
    ros-lunar/cmake_modules
    ros-lunar/common_msgs
    ros-lunar/gencpp
    ros-lunar/geneus
    ros-lunar/genlisp
    ros-lunar/genmsg
    ros-lunar/gennodejs
    ros-lunar/genpy
    ros-lunar/message_generation
    ros-lunar/message_runtime
    ros-lunar/ros
    ros-lunar/ros_comm
    ros-lunar/rosbag_migration_rule
    ros-lunar/rosconsole_bridge
    ros-lunar/roscpp_core
    ros-lunar/rosgraph_msgs
    ros-lunar/roslisp
    ros-lunar/rospack
    ros-lunar/std_msgs
    ros-lunar/std_srvs
"
DEPEND="${RDEPEND}
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
