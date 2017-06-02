# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="A metapackage to aggregate the packages required to use publish / subscribe, ser"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/metapackages-release/archive/release/indigo/ros_core/1.1.5-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-indigo/catkin
    ros-indigo/cmake_modules
    ros-indigo/common_msgs
    ros-indigo/gencpp
    ros-indigo/genlisp
    ros-indigo/genmsg
    ros-indigo/genpy
    ros-indigo/message_generation
    ros-indigo/message_runtime
    ros-indigo/ros
    ros-indigo/ros_comm
    ros-indigo/rosbag_migration_rule
    ros-indigo/rosconsole_bridge
    ros-indigo/roscpp_core
    ros-indigo/rosgraph_msgs
    ros-indigo/roslisp
    ros-indigo/rospack
    ros-indigo/std_msgs
    ros-indigo/std_srvs
"
DEPEND="${RDEPEND}
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
