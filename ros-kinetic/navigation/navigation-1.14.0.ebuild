# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="A 2D navigation stack that takes in information from odometry, sensor
        st"
HOMEPAGE="http://wiki.ros.org/navigation"
SRC_URI="https://github.com/ros-gbp/navigation-release/archive/release/kinetic/navigation/1.14.0-0.tar.gz"

LICENSE="BSD,LGPL,LGPL (amcl)"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/voxel_grid
    ros-kinetic/fake_localization
    ros-kinetic/move_slow_and_clear
    ros-kinetic/amcl
    ros-kinetic/robot_pose_ekf
    ros-kinetic/nav_core
    ros-kinetic/costmap_2d
    ros-kinetic/clear_costmap_recovery
    ros-kinetic/dwa_local_planner
    ros-kinetic/global_planner
    ros-kinetic/move_base_msgs
    ros-kinetic/carrot_planner
    ros-kinetic/rotate_recovery
    ros-kinetic/map_server
    ros-kinetic/base_local_planner
    ros-kinetic/navfn
    ros-kinetic/move_base
"
DEPEND="${RDEPEND}
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/kinetic"

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
