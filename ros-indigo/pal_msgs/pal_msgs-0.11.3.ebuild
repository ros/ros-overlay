# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="PAL-specific messages and services"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/pal-gbp/pal_msgs-release/archive/release/indigo/pal_msgs/0.11.3-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/pal_vision_msgs
    ros-indigo/pal_detection_msgs
    ros-indigo/pal_interaction_msgs
    ros-indigo/pal_tablet_msgs
    ros-indigo/pal_control_msgs
    ros-indigo/pal_navigation_msgs
    ros-indigo/pal_device_msgs
    ros-indigo/pal_motion_model_msgs
    ros-indigo/pal_multirobot_msgs
    ros-indigo/pal_walking_msgs
    ros-indigo/pal_behaviour_msgs
    ros-indigo/pal_wifi_localization_msgs
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
