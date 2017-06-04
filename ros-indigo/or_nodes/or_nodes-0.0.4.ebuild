# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="or_nodes"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://gitlab.uni-koblenz.de/robbie/homer_object_recognition/repository/archive.tar.gz?ref=release/indigo/or_nodes/0.0.4-0 -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-indigo/cv_bridge
    ros-indigo/homer_nav_libs
    ros-indigo/message_runtime
    ros-indigo/or_libs
    ros-indigo/or_msgs
    ros-indigo/robbie_architecture
    ros-indigo/roscpp_serialization
    ros-indigo/roslib
    ros-indigo/sensor_msgs
    ros-indigo/std_msgs
    ros-indigo/tf
    dev-libs/boost
    media-libs/opencv
"
DEPEND="${RDEPEND}
    dev-python/catkin
    ros-indigo/catkin
    ros-indigo/cmake_modules
    ros-indigo/genmsg
    ros-indigo/message_generation
    ros-indigo/roscpp
    ros-indigo/roslang
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
