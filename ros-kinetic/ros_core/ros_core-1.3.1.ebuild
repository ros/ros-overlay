# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="A metapackage to aggregate the packages required to use publish / subscribe, services, launch files, and other core ROS concepts."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/metapackages-release/archive/release/kinetic/ros_core/1.3.1-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/rosgraph_msgs
    ros-kinetic/genlisp
    ros-kinetic/genpy
    ros-kinetic/genmsg
    ros-kinetic/catkin
    ros-kinetic/std_srvs
    ros-kinetic/gencpp
    ros-kinetic/rosconsole_bridge
    ros-kinetic/std_msgs
    ros-kinetic/message_runtime
    ros-kinetic/roscpp_core
    ros-kinetic/geneus
    ros-kinetic/gennodejs
    ros-kinetic/cmake_modules
    ros-kinetic/roslisp
    ros-kinetic/message_generation
    ros-kinetic/rospack
    ros-kinetic/ros
    ros-kinetic/rosbag_migration_rule
    ros-kinetic/ros_comm
    ros-kinetic/common_msgs
"
DEPEND="${RDEPEND}
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
