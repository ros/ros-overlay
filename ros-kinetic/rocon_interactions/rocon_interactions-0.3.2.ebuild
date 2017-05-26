# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Interaction management for human interactive agents in the concert."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/rocon_tools-release/archive/release/kinetic/rocon_interactions/0.3.2-1.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/genpy
    ros-kinetic/rocon_python_utils
    ros-kinetic/std_msgs
    ros-kinetic/rocon_uri
    ros-kinetic/rocon_app_manager_msgs
    ros-kinetic/rospy
    ros-kinetic/rocon_bubble_icons
    ros-kinetic/rocon_std_msgs
    ros-kinetic/rocon_python_comms
    ros-kinetic/rocon_console
    ros-kinetic/rocon_interaction_msgs
    ros-kinetic/unique_id
    ros-kinetic/rocon_icons
    dev-python/rospkg
"
DEPEND="${RDEPEND}
    ros-kinetic/roslint
    ros-kinetic/rostest
    dev-python/catkin_pkg
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/kinetic"

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
    source /opt/ros/kinetic/setup.bash
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}"
    rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
    rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
}
