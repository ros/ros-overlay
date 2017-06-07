# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="The romeo_gazebo_plugin package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-aldebaran/romeo_virtual-release/archive/release/kinetic/romeo_gazebo_plugin/0.2.2-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-kinetic/gazebo_plugins
    ros-kinetic/gazebo_ros
    ros-kinetic/gazebo_ros_control
    ros-kinetic/romeo_control
    ros-kinetic/romeo_description
    ros-kinetic/ros_control
    ros-kinetic/ros_controllers
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
}

src_configure() {
    append-cxxflags "-std=c++11"
    export DEST_SETUP_DIR="/${ROS_PREFIX}"
    local mycmakeargs=(
        -DCMAKE_INSTALL_PREFIX=${D}${ROS_PREFIX}
        -DCMAKE_PREFIX_PATH=/${ROS_PREFIX}
        -DPYTHON_INSTALL_DIR=lib64/site-packages/python3.5
        -DPYTHON_EXECUTABLE=/usr/bin/ros-python
        -DCATKIN_BUILD_BINARY_PACKAGE=1
     )
    cmake-utils_src_configure
}

src_install() {
    cd ${WORKDIR}/${P}_build
    make install || die
}
