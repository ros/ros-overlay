# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="General concert functionality."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/rocon_concert-release/archive/release/indigo/concert_master/0.6.11-1.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/rocon_master_info
    ros-indigo/rospy
    ros-indigo/rocon_std_msgs
    ros-indigo/zeroconf_avahi
    ros-indigo/rocon_hub
    ros-indigo/rocon_interactions
    ros-indigo/concert_schedulers
    ros-indigo/rocon_python_utils
    ros-indigo/rocon_icons
    ros-indigo/concert_service_manager
    ros-indigo/concert_software_farmer
    ros-indigo/rocon_python_comms
    ros-indigo/concert_msgs
    ros-indigo/rocon_gateway
    ros-indigo/rocon_console
    ros-indigo/concert_conductor
    ros-indigo/rosbridge_server
"
DEPEND="${RDEPEND}
    dev-python/catkin_pkg
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
