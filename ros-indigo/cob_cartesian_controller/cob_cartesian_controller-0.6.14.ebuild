# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This package provides nodes that broadcast tf-frames along various (model-based)"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ipa320/cob_control-release/archive/release/indigo/cob_cartesian_controller/0.6.14-0.tar.gz"

LICENSE="LGPL"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/visualization_msgs
    ros-indigo/topic_tools
    ros-indigo/rospy
    ros-indigo/xacro
    ros-indigo/geometry_msgs
    ros-indigo/actionlib
    ros-indigo/message_runtime
    ros-indigo/actionlib_msgs
    ros-indigo/roscpp
    ros-indigo/std_msgs
    ros-indigo/cob_twist_controller
    ros-indigo/rviz
    ros-indigo/std_srvs
    ros-indigo/robot_state_publisher
    ros-indigo/tf
    ros-indigo/cob_frame_tracker
    ros-indigo/cob_srvs
    dev-libs/boost
"
DEPEND="${RDEPEND}
    ros-indigo/roslint
    ros-indigo/message_generation
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
