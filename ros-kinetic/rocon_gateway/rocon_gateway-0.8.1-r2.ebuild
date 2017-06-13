# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="A hub acts as a shared key-value store for multiple ros 
    systems (primarily "
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/rocon_multimaster-release/archive/release/kinetic/rocon_gateway/0.8.1-2.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-kinetic/gateway_msgs
    ros-kinetic/rocon_console
    ros-kinetic/rocon_gateway_utils
    ros-kinetic/rocon_hub_client
    ros-kinetic/rocon_python_comms
    ros-kinetic/rocon_python_redis
    ros-kinetic/rocon_python_utils
    ros-kinetic/rocon_python_wifi
    ros-kinetic/rosgraph
    ros-kinetic/roslib
    ros-kinetic/rosparam
    ros-kinetic/rospy
    ros-kinetic/rosservice
    ros-kinetic/rostopic
    ros-kinetic/std_srvs
    ros-kinetic/zeroconf_avahi
    ros-kinetic/zeroconf_msgs
    dev-python/pycrypto
"
DEPEND="${RDEPEND}
    ros-kinetic/catkin
    ros-kinetic/roslint
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
        -DCATKIN_BUILD_BINARY_PACKAGE=1
     )
    cmake-utils_src_configure
}

src_install() {
    cd ${WORKDIR}/${P}_build
    make install || die
}
