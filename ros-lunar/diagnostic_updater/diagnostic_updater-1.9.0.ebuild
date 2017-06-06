# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="diagnostic_updater contains tools for easily updating diagnostics. it is commonl"
HOMEPAGE="http://www.ros.org/wiki/diagnostic_updater"
SRC_URI="https://github.com/ros-gbp/diagnostics-release/archive/release/lunar/diagnostic_updater/1.9.0-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-lunar/diagnostic_msgs
    ros-lunar/roscpp
    ros-lunar/std_msgs
"
DEPEND="${RDEPEND}
    ros-lunar/catkin
    ros-lunar/rostest
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
    export DEST_SETUP_DIR="/${ROS_PREFIX}"
    local mycmakeargs=(
        -DCMAKE_INSTALL_PREFIX=${D}${ROS_PREFIX}
        -DCMAKE_PREFIX_PATH=/${ROS_PREFIX}
        -DPYTHON_EXECUTABLE="/opt/ros/lunar/env.sh python3.5"
        -DCATKIN_BUILD_BINARY_PACKAGE=1
     )
    cmake-utils_src_configure
}

src_install() {
    cd ${WORKDIR}/${P}_build
    make install || die
}
