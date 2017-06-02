# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/jsk_robot-release/archive/release/indigo/jsk_robot/1.0.6-2.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-indigo/baxtereus
    ros-indigo/fetcheus
    ros-indigo/jsk_201504_miraikan
    ros-indigo/jsk_baxter_desktop
    ros-indigo/jsk_baxter_startup
    ros-indigo/jsk_baxter_web
    ros-indigo/jsk_fetch_startup
    ros-indigo/jsk_nao_startup
    ros-indigo/jsk_pepper_startup
    ros-indigo/jsk_pr2_calibration
    ros-indigo/jsk_pr2_startup
    ros-indigo/jsk_robot_startup
    ros-indigo/jsk_robot_utils
    ros-indigo/naoeus
    ros-indigo/naoqieus
    ros-indigo/peppereus
    ros-indigo/pr2_base_trajectory_action
    ros-indigo/roseus_remote
"
DEPEND="${RDEPEND}
    ros-indigo/catkin
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/indigo"

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
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
