# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="ROS-Industrial support for Fanuc manipulators (metapackage)."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-industrial-release/fanuc-release/archive/release/indigo/fanuc/0.4.2-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/fanuc_driver
    ros-indigo/fanuc_lrmate200ic5h_moveit_config
    ros-indigo/fanuc_lrmate200ic5l_moveit_config
    ros-indigo/fanuc_lrmate200ic_moveit_config
    ros-indigo/fanuc_lrmate200ic_moveit_plugins
    ros-indigo/fanuc_lrmate200ic_support
    ros-indigo/fanuc_m10ia_moveit_config
    ros-indigo/fanuc_m10ia_moveit_plugins
    ros-indigo/fanuc_m10ia_support
    ros-indigo/fanuc_m16ib20_moveit_config
    ros-indigo/fanuc_m16ib_moveit_plugins
    ros-indigo/fanuc_m16ib_support
    ros-indigo/fanuc_m20ia10l_moveit_config
    ros-indigo/fanuc_m20ia_moveit_config
    ros-indigo/fanuc_m20ia_moveit_plugins
    ros-indigo/fanuc_m20ia_support
    ros-indigo/fanuc_m430ia2f_moveit_config
    ros-indigo/fanuc_m430ia2p_moveit_config
    ros-indigo/fanuc_m430ia_moveit_plugins
    ros-indigo/fanuc_m430ia_support
    ros-indigo/fanuc_resources
"
DEPEND="${RDEPEND}
    ros-indigo/catkin
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
