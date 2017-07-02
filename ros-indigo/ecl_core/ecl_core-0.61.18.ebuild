# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="A set of tools and interfaces extending the capabilities of c++ to 
    provide "
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/ecl_core-release/archive/release/indigo/ecl_core/0.61.18-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/ecl_command_line
    ros-indigo/ecl_concepts
    ros-indigo/ecl_containers
    ros-indigo/ecl_converters
    ros-indigo/ecl_core_apps
    ros-indigo/ecl_devices
    ros-indigo/ecl_eigen
    ros-indigo/ecl_exceptions
    ros-indigo/ecl_formatters
    ros-indigo/ecl_geometry
    ros-indigo/ecl_ipc
    ros-indigo/ecl_linear_algebra
    ros-indigo/ecl_math
    ros-indigo/ecl_mpl
    ros-indigo/ecl_sigslots
    ros-indigo/ecl_statistics
    ros-indigo/ecl_streams
    ros-indigo/ecl_threads
    ros-indigo/ecl_time
    ros-indigo/ecl_type_traits
    ros-indigo/ecl_utilities
"
DEPEND="${RDEPEND}
    ros-indigo/catkin
"

SLOT="indigo"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="/opt/ros/indigo"

src_unpack() {
    default
    mv *${P}* ${P}
}

src_configure() {
    append-cxxflags "-std=c++11"
    export DEST_SETUP_DIR="${ROS_PREFIX}"
    local mycmakeargs=(
        -DCMAKE_INSTALL_PREFIX=${D%/}${ROS_PREFIX}
        -DCMAKE_PREFIX_PATH=${ROS_PREFIX}
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
