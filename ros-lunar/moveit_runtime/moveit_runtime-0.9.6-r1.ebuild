# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="moveit_runtime meta package contains MoveIt! packages that are essential for its"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/moveit-release/archive/release/lunar/moveit_runtime/0.9.6-1.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-lunar/moveit_core
    ros-lunar/moveit_planners
    ros-lunar/moveit_plugins
    ros-lunar/moveit_ros_manipulation
    ros-lunar/moveit_ros_move_group
    ros-lunar/moveit_ros_perception
    ros-lunar/moveit_ros_planning
    ros-lunar/moveit_ros_planning_interface
    ros-lunar/moveit_ros_warehouse
"
DEPEND="${RDEPEND}
    dev-python/catkin
    ros-lunar/catkin
"

SLOT="0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/lunar"
CMAKE_ROS_FLAGS="-DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE}"
CMAKE_ROS_FLAGS="-DCMAKE_INSTALL_PREFIX=/${ROS_PREFIX} ${CMAKE_ROS_FLAGS}"
CMAKE_ROS_FLAGS="-DCATKIN_DEVEL_PREFIX=../devel ${CMAKE_ROS_FLAGS}"
CMAKE_ROS_FLAGS="-DCMAKE_PREFIX_PATH=/${ROS_PREFIX}:${CMAKE_PREFIX_PATH}"

src_unpack() {
    default
    mv *${P}* ${P}
}

src_configure() {
    mkdir ${WORKDIR}/src
    cp -R ${WORKDIR}/${P} ${WORKDIR}/src/${P}
}

src_compile() {
    mkdir ${WORKDIR}/${P}/build
    mkdir ${WORKDIR}/${P}/devel
    cd ${WORKDIR}/${P}/build
    cmake -DCMAKE_INSTALL_PREFIX=/${ROS_PREFIX} -DCMAKE_PREFIX_PATH=/${ROS_PREFIX}-DCATKIN_DEVEL_PREFIX=../devel ..
    make -j$(nproc) -l$(nproc) || die
}

src_install() {
    cd ../../work
    source /${ROS_PREFIX}/setup.bash
    export PYTHONPATH="/${ROS_PREFIX}/lib/python3.5/site-packages:${PYTHONPATH}"
    export PYTHONPATH="/${ROS_PREFIX}/lib64/python3.5/site-packages:${PYTHONPATH}"
    export PYTHONPATH="${D}/${ROS_PREFIX}/lib/python3.5/site-packages:${PYTHONPATH}"
    export PYTHONPATH="${D}/${ROS_PREFIX}/lib64/python3.5/site-packages:${PYTHONPATH}"
    if [[ ! -d ${D}/${ROS_PREFIX}/lib64/python3.5/site-packages ]]; then
        mkdir -p ${D}/${ROS_PREFIX}/lib64/python3.5/site-packages
    fi

    cd ${P}/build
    make install || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
