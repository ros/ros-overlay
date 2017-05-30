# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="A very simple software concert."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/rocon_tutorials-release/archive/release/indigo/turtle_concert/0.6.7-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/zeroconf_msgs
    ros-indigo/rospy
    ros-indigo/geometry_msgs
    ros-indigo/rocon_python_comms
    ros-indigo/concert_scheduler_requests
    ros-indigo/concert_msgs
    ros-indigo/concert_service_turtlesim
    ros-indigo/rocon_python_utils
    ros-indigo/roscpp
    ros-indigo/concert_master
    ros-indigo/rocon_app_manager
    ros-indigo/rocon_uri
    ros-indigo/gateway_msgs
    ros-indigo/std_srvs
    ros-indigo/turtlesim
    ros-indigo/rocon_apps
    ros-indigo/rocon_bubble_icons
    ros-indigo/zeroconf_avahi
    ros-indigo/concert_service_admin
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
