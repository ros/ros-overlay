# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/rtmros_hironx-release/archive/release/indigo/hironx_ros_bridge/1.1.24-0.tar.gz"

LICENSE="|| ( BSD CreativeCommons-by-nc-4.0 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/rosbash
    ros-indigo/rospy
    ros-indigo/roslang
    ros-indigo/openni2_launch
    ros-indigo/pr2_controllers_msgs
    ros-indigo/roslib
    ros-indigo/hrpsys_ros_bridge
    ros-indigo/moveit_commander
    ros-indigo/control_msgs
    ros-indigo/tf
    sci-visualization/gnuplot
"
DEPEND="${RDEPEND}
    ros-indigo/roslint
    ros-indigo/rosbuild
    ros-indigo/mk
    app-arch/unzip
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
