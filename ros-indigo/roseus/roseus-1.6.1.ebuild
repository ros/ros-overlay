# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="EusLisp client for ROs Robot Operating System."
HOMEPAGE="http://pr.willowgarage.com/wiki/roseus"
SRC_URI="https://github.com/tork-a/jsk_roseus-release/archive/release/indigo/roseus/1.6.1-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/rostest
    ros-indigo/actionlib_msgs
    ros-indigo/roscpp
    ros-indigo/rosbash
    ros-indigo/tf
    ros-indigo/jskeus
    ros-indigo/rosmsg
    ros-indigo/geneus
    ros-indigo/std_srvs
    ros-indigo/geometry_msgs
    ros-indigo/std_msgs
    ros-indigo/rosnode
    ros-indigo/tf2_ros
    ros-indigo/actionlib
    ros-indigo/rospack
    ros-indigo/euslisp
    ros-indigo/actionlib_tutorials
    ros-indigo/dynamic_reconfigure
    ros-indigo/visualization_msgs
    ros-indigo/roslang
    ros-indigo/sensor_msgs
    ros-indigo/message_runtime
"
DEPEND="${RDEPEND}
    ros-indigo/rosbuild
    ros-indigo/rostopic
    ros-indigo/mk
    ros-indigo/message_generation
    ros-indigo/angles
    sys-apps/coreutils
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/indigo"

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
