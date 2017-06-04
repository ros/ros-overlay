# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This package is bot of Alfred Assitant for ROS. This package is part of Alfred A"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/rosalfred-release/alfred_bot-release/archive/release/indigo/alfred_bot/0.1.121-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="GPL-3"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-indigo/rosjava_core
    ros-indigo/rosjava_dynamic_reconfigure
    ros-indigo/smarthome_comm_msgs
    ros-indigo/smarthome_common_driver
    ros-indigo/smarthome_media_model
    ros-indigo/smarthome_media_msgs
"
DEPEND="${RDEPEND}
    dev-python/catkin
    ros-indigo/catkin
    ros-indigo/rosjava_build_tools
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
