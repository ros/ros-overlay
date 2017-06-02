# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="A 2D navigation stack that takes in information from odometry, sensor
        st"
HOMEPAGE="http://wiki.ros.org/navigation"
SRC_URI="https://github.com/ros-gbp/navigation-release/archive/release/kinetic/navigation/1.14.0-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD,LGPL,LGPL (amcl)"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-kinetic/amcl
    ros-kinetic/base_local_planner
    ros-kinetic/carrot_planner
    ros-kinetic/clear_costmap_recovery
    ros-kinetic/costmap_2d
    ros-kinetic/dwa_local_planner
    ros-kinetic/fake_localization
    ros-kinetic/global_planner
    ros-kinetic/map_server
    ros-kinetic/move_base
    ros-kinetic/move_base_msgs
    ros-kinetic/move_slow_and_clear
    ros-kinetic/nav_core
    ros-kinetic/navfn
    ros-kinetic/robot_pose_ekf
    ros-kinetic/rotate_recovery
    ros-kinetic/voxel_grid
"
DEPEND="${RDEPEND}
    ros-kinetic/catkin
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/kinetic"

src_unpack() {
    default
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
    export PYTHONPATH="/${ROS_PREFIX}/lib/python3.5/site-packages:${PYTHONPATH}"    export PYTHONPATH="/${ROS_PREFIX}/lib64/python3.5/site-packages:${PYTHONPATH}"    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
