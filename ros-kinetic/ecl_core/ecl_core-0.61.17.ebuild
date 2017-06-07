# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="A set of tools and interfaces extending the capabilities of c++ to 
    provide "
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/ecl_core-release/archive/release/kinetic/ecl_core/0.61.17-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-kinetic/ecl_command_line
    ros-kinetic/ecl_concepts
    ros-kinetic/ecl_containers
    ros-kinetic/ecl_converters
    ros-kinetic/ecl_core_apps
    ros-kinetic/ecl_devices
    ros-kinetic/ecl_eigen
    ros-kinetic/ecl_exceptions
    ros-kinetic/ecl_formatters
    ros-kinetic/ecl_geometry
    ros-kinetic/ecl_ipc
    ros-kinetic/ecl_linear_algebra
    ros-kinetic/ecl_math
    ros-kinetic/ecl_mpl
    ros-kinetic/ecl_sigslots
    ros-kinetic/ecl_statistics
    ros-kinetic/ecl_streams
    ros-kinetic/ecl_threads
    ros-kinetic/ecl_time
    ros-kinetic/ecl_type_traits
    ros-kinetic/ecl_utilities
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
        -DPYTHON_INSTALL_DIR=lib64/site-packages/python3.5        -DPYTHON_EXECUTABLE=/usr/bin/ros-python
        -DCATKIN_BUILD_BINARY_PACKAGE=1
     )
    cmake-utils_src_configure
}

src_install() {
    cd ${WORKDIR}/${P}_build
    make install || die
}
