# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="slider_gui"
HOMEPAGE="http://ros.org/wiki/slider_gui"
SRC_URI="https://github.com/pr2-gbp/pr2_hack_the_future-release/archive/release/indigo/slider_gui/1.1.0-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/face_detector
    ros-indigo/rospy
    ros-indigo/std_srvs
    ros-indigo/trajectory_msgs
    ros-indigo/pr2_controllers_msgs
    ros-indigo/korg_nanokontrol
    ros-indigo/rviz_backdrop
    ros-indigo/sensor_msgs
    ros-indigo/sound_play
    ros-indigo/actionlib
    ros-indigo/pr2_mechanism_msgs
    ros-indigo/program_queue
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
