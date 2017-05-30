# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Common packages and data for the Building-Wide Intelligence
    project of the U"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/utexas-bwi-gbp/bwi_common-release/archive/release/indigo/bwi_common/0.3.12-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/bwi_kr_execution
    ros-indigo/bwi_msgs
    ros-indigo/bwi_virtour
    ros-indigo/multi_level_map_msgs
    ros-indigo/bwi_gazebo_entities
    ros-indigo/bwi_joystick_teleop
    ros-indigo/multi_level_map_utils
    ros-indigo/bwi_tools
    ros-indigo/bwi_logging
    ros-indigo/bwi_rqt_plugins
    ros-indigo/bwi_scavenger
    ros-indigo/bwi_interruptable_action_server
    ros-indigo/bwi_tasks
    ros-indigo/multi_level_map_server
    ros-indigo/stop_base
    ros-indigo/bwi_planning_common
    ros-indigo/utexas_gdc
    ros-indigo/bwi_services
    ros-indigo/bwi_mapper
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
