# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Applications for NAO using the NAOqi API"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-naoqi/nao_robot-release/archive/release/kinetic/nao_apps/0.5.15-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-kinetic/actionlib
    ros-kinetic/diagnostic_msgs
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/geometry_msgs
    ros-kinetic/humanoid_nav_msgs
    ros-kinetic/naoqi_bridge
    ros-kinetic/naoqi_bridge_msgs
    ros-kinetic/naoqi_driver
    ros-kinetic/naoqi_driver_py
    ros-kinetic/naoqi_pose
    ros-kinetic/rospy
    ros-kinetic/std_msgs
    ros-kinetic/std_srvs
"
DEPEND="${RDEPEND}
    ros-kinetic/catkin
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/kinetic"

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
    export PYTHONPATH="/${ROS_PREFIX}/lib/python3.5/site-packages:${PYTHONPATH}"    export PYTHONPATH="/${ROS_PREFIX}/lib64/python3.5/site-packages:${PYTHONPATH}"    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
