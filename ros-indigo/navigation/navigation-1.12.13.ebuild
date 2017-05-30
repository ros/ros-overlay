# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="A 2D navigation stack that takes in information from odometry, sensor
        st"
HOMEPAGE="http://wiki.ros.org/navigation"
SRC_URI="https://github.com/ros-gbp/navigation-release/archive/release/indigo/navigation/1.12.13-0.tar.gz"

LICENSE="BSD,LGPL,LGPL (amcl)"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/voxel_grid
    ros-indigo/fake_localization
    ros-indigo/move_slow_and_clear
    ros-indigo/amcl
    ros-indigo/robot_pose_ekf
    ros-indigo/nav_core
    ros-indigo/costmap_2d
    ros-indigo/clear_costmap_recovery
    ros-indigo/dwa_local_planner
    ros-indigo/global_planner
    ros-indigo/move_base_msgs
    ros-indigo/carrot_planner
    ros-indigo/rotate_recovery
    ros-indigo/map_server
    ros-indigo/base_local_planner
    ros-indigo/navfn
    ros-indigo/move_base
"
DEPEND="${RDEPEND}
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
