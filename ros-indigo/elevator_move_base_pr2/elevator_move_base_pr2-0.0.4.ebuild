# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="elevator_move_base_pr2"
HOMEPAGE="http://ros.org/wiki/elevator_move_base_pr2"
SRC_URI="https://github.com/tork-a/jsk_demos-release/archive/release/indigo/elevator_move_base_pr2/0.0.4-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/message_runtime
"
DEPEND="${RDEPEND}
    ros-indigo/image_geometry
    ros-indigo/rospy
    ros-indigo/nav_msgs
    ros-indigo/image_transport
    ros-indigo/pr2eus
    ros-indigo/message_generation
    ros-indigo/roseus_smach
    ros-indigo/jsk_perception
    ros-indigo/roscpp
    ros-indigo/roseus
    ros-indigo/jsk_maps
    ros-indigo/move_base_msgs
    ros-indigo/sound_play
    ros-indigo/std_msgs
    ros-indigo/std_srvs
    ros-indigo/cv_bridge
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
