# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="A metapackage to aggregate the packages required to use publish / subscribe, ser"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/metapackages-release/archive/release/lunar/ros_core/1.3.1-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/rosconsole_bridge
    ros-lunar/std_msgs
    ros-lunar/cmake_modules
    ros-lunar/std_srvs
    ros-lunar/common_msgs
    ros-lunar/genmsg
    ros-lunar/genpy
    ros-lunar/rospack
    ros-lunar/genlisp
    ros-lunar/geneus
    ros-lunar/gennodejs
    ros-lunar/message_runtime
    ros-lunar/ros_comm
    ros-lunar/message_generation
    ros-lunar/catkin
    ros-lunar/gencpp
    ros-lunar/ros
    ros-lunar/rosbag_migration_rule
    ros-lunar/roscpp_core
    ros-lunar/roslisp
    ros-lunar/rosgraph_msgs
"
DEPEND="${RDEPEND}
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/lunar"

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
    if [[ -e ${D}/${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
