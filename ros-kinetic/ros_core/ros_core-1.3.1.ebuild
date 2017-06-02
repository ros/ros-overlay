# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="A metapackage to aggregate the packages required to use publish / subscribe, ser"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/metapackages-release/archive/release/kinetic/ros_core/1.3.1-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-kinetic/catkin
    ros-kinetic/cmake_modules
    ros-kinetic/common_msgs
    ros-kinetic/gencpp
    ros-kinetic/geneus
    ros-kinetic/genlisp
    ros-kinetic/genmsg
    ros-kinetic/gennodejs
    ros-kinetic/genpy
    ros-kinetic/message_generation
    ros-kinetic/message_runtime
    ros-kinetic/ros
    ros-kinetic/ros_comm
    ros-kinetic/rosbag_migration_rule
    ros-kinetic/rosconsole_bridge
    ros-kinetic/roscpp_core
    ros-kinetic/rosgraph_msgs
    ros-kinetic/roslisp
    ros-kinetic/rospack
    ros-kinetic/std_msgs
    ros-kinetic/std_srvs
"
DEPEND="${RDEPEND}
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
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
