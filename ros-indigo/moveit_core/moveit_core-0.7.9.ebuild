# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Core libraries used by MoveIt!"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/moveit-release/archive/release/indigo/moveit_core/0.7.9-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/octomap_msgs
    ros-indigo/rostime
    ros-indigo/random_numbers
    ros-indigo/geometry_msgs
    ros-indigo/std_msgs
    ros-indigo/fcl
    ros-indigo/geometric_shapes
    ros-indigo/kdl_parser
    ros-indigo/moveit_msgs
    ros-indigo/visualization_msgs
    ros-indigo/eigen_stl_containers
    ros-indigo/srdfdom
    ros-indigo/trajectory_msgs
    ros-indigo/sensor_msgs
    ros-indigo/octomap
    ros-indigo/eigen_conversions
    media-libs/assimp
    dev-libs/boost
    dev-cpp/eigen
    dev-libs/console_bridge
    dev-libs/urdfdom_headers
    dev-libs/urdfdom
"
DEPEND="${RDEPEND}
    ros-indigo/shape_msgs
    ros-indigo/roslib
    ros-indigo/cmake_modules
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/indigo"

src_unpack() {
    wget -O ${P}.tar.gz ${SRC_URI}
    tar -xf ${P}.tar.gz
    rm -f ${P}.tar.gz
    mv *${P}* ${P}
}

src_configure() {
    mkdir ${WORKDIR}/src
    cp -R ${WORKDIR}/${P} ${WORKDIR}/src/${P}
}

src_compile() {
    echo ""
}

src_install() {
    cd ../../work
    source /${ROS_PREFIX}/setup.bash
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
