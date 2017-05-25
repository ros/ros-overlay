# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://wiki.ros.org/navigation"
SRC_URI="https://github.com/ros-gbp/navigation-release/archive/release/kinetic/navigation/1.14.0-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/move_base
    ros-kinetic/navfn
    ros-kinetic/clear_costmap_recovery
    ros-kinetic/map_server
    ros-kinetic/costmap_2d
    ros-kinetic/dwa_local_planner
    ros-kinetic/base_local_planner
    ros-kinetic/carrot_planner
    ros-kinetic/rotate_recovery
    ros-kinetic/voxel_grid
    ros-kinetic/global_planner
    ros-kinetic/amcl
    ros-kinetic/fake_localization
    ros-kinetic/move_base_msgs
    ros-kinetic/move_slow_and_clear
    ros-kinetic/nav_core
    ros-kinetic/robot_pose_ekf

"
DEPEND="${RDEPEND}

"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo

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
    echo ""
}

pkg_postinst() {
    cd ../work
    source /opt/ros/kinetic/setup.bash
    catkin_make_isolated --install --install-space="/opt/ros/kinetic" || die
}
