# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="EusLisp client for ROs Robot Operating System."
HOMEPAGE="http://pr.willowgarage.com/wiki/roseus"
SRC_URI="https://github.com/tork-a/jsk_roseus-release/archive/release/kinetic/roseus/1.6.1-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/rosbash
    ros-kinetic/std_msgs
    ros-kinetic/actionlib_tutorials
    ros-kinetic/geneus
    ros-kinetic/tf2_ros
    ros-kinetic/jskeus
    ros-kinetic/rosnode
    ros-kinetic/rospack
    ros-kinetic/actionlib
    ros-kinetic/roslang
    ros-kinetic/message_runtime
    ros-kinetic/rostest
    ros-kinetic/sensor_msgs
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/actionlib_msgs
    ros-kinetic/roscpp
    ros-kinetic/euslisp
    ros-kinetic/std_srvs
    ros-kinetic/visualization_msgs
    ros-kinetic/tf
    ros-kinetic/geometry_msgs
    ros-kinetic/rosmsg
"
DEPEND="${RDEPEND}
    ros-kinetic/angles
    ros-kinetic/message_generation
    ros-kinetic/mk
    ros-kinetic/rostopic
    ros-kinetic/rosbuild
    sys-apps/coreutils
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
    source /${ROS_PREFIX}/setup.bash
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
