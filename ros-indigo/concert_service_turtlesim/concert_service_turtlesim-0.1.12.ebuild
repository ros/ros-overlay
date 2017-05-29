# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Sets up the turtlesim engine as a service to assist in spawning/killing turtle c"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/concert_services-release/archive/release/indigo/concert_service_turtlesim/0.1.12-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/gateway_msgs
    ros-indigo/rocon_std_msgs
    ros-indigo/rospy
    ros-indigo/rocon_gateway_utils
    ros-indigo/rocon_launch
    ros-indigo/std_msgs
    ros-indigo/concert_service_msgs
    ros-indigo/turtlesim
    ros-indigo/rocon_python_utils
    ros-indigo/rocon_console
    ros-indigo/concert_service_utilities
    ros-indigo/rocon_app_manager_msgs
    ros-indigo/rocon_python_comms
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
