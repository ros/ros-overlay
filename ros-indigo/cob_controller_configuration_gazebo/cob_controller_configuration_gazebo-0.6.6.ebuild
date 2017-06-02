# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This packages provides the controller configuration for simulating Care-O-bot in"
HOMEPAGE="http://ros.org/wiki/cob_controller_configuration_gazebo"
SRC_URI="https://github.com/ipa320/cob_robots-release/archive/release/indigo/cob_controller_configuration_gazebo/0.6.6-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="LGPL"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-indigo/cob_bringup
    ros-indigo/cob_cam3d_throttle
    ros-indigo/cob_hardware_config
    ros-indigo/cob_phidgets
    ros-indigo/cob_script_server
    ros-indigo/diagnostic_msgs
    ros-indigo/roslaunch
    ros-indigo/rospy
    ros-indigo/std_msgs
    ros-indigo/std_srvs
    ros-indigo/topic_tools
"
DEPEND="${RDEPEND}
    ros-indigo/catkin
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/indigo"

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
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
