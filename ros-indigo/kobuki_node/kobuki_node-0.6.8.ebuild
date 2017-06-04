# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="ROS nodelet for Kobuki: ROS wrapper for the Kobuki driver."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/kobuki-release/archive/release/indigo/kobuki_node/0.6.8-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-indigo/angles
    ros-indigo/capabilities
    ros-indigo/diagnostic_aggregator
    ros-indigo/diagnostic_msgs
    ros-indigo/diagnostic_updater
    ros-indigo/ecl_exceptions
    ros-indigo/ecl_sigslots
    ros-indigo/ecl_streams
    ros-indigo/ecl_threads
    ros-indigo/geometry_msgs
    ros-indigo/kobuki_driver
    ros-indigo/kobuki_ftdi
    ros-indigo/kobuki_keyop
    ros-indigo/kobuki_msgs
    ros-indigo/kobuki_rapps
    ros-indigo/kobuki_safety_controller
    ros-indigo/nav_msgs
    ros-indigo/nodelet
    ros-indigo/pluginlib
    ros-indigo/roscpp
    ros-indigo/rospy
    ros-indigo/sensor_msgs
    ros-indigo/std_msgs
    ros-indigo/tf
"
DEPEND="${RDEPEND}
    dev-python/catkin
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
    export PYTHONPATH="/${ROS_PREFIX}/lib/python3.5/site-packages:${PYTHONPATH}"
    export PYTHONPATH="/${ROS_PREFIX}/lib64/python3.5/site-packages:${PYTHONPATH}"
    export PYTHONPATH="${D}/${ROS_PREFIX}/lib/python3.5/site-packages:${PYTHONPATH}"
    export PYTHONPATH="${D}/${ROS_PREFIX}/lib64/python3.5/site-packages:${PYTHONPATH}"
    if [[ ! -d ${D}/${ROS_PREFIX}/lib64/python3.5/site-packages ]]; then
        mkdir -p ${D}/${ROS_PREFIX}/lib64/python3.5/site-packages
    fi

    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
