# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This stack contains all descriptions, drivers and bringup facilities for Neuroni"
HOMEPAGE="http://ros.org/wiki/katana_driver"
SRC_URI="https://github.com/uos-gbp/katana_driver-release/archive/release/lunar/katana_driver/1.1.2-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="|| ( BSD GPL-1 )"
KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-lunar/katana
    ros-lunar/katana_arm_gazebo
    ros-lunar/katana_description
    ros-lunar/katana_gazebo_plugins
    ros-lunar/katana_moveit_ikfast_plugin
    ros-lunar/katana_msgs
    ros-lunar/katana_teleop
    ros-lunar/katana_tutorials
    ros-lunar/kni
"
DEPEND="${RDEPEND}
    ros-lunar/catkin
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
