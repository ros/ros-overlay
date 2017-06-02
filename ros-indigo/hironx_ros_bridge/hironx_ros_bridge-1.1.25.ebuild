# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/rtmros_hironx-release/archive/release/indigo/hironx_ros_bridge/1.1.25-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="|| ( "BSD" "CreativeCommons-by-nc-4.0" )"
KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-indigo/control_msgs
    ros-indigo/hrpsys_ros_bridge
    ros-indigo/moveit_commander
    ros-indigo/openni2_launch
    ros-indigo/pr2_controllers_msgs
    ros-indigo/rosbash
    ros-indigo/roslang
    ros-indigo/roslib
    ros-indigo/rospy
    ros-indigo/tf
    sci-visualization/gnuplot
"
DEPEND="${RDEPEND}
    ros-indigo/catkin
    ros-indigo/mk
    ros-indigo/rosbuild
    ros-indigo/roslint
    app-arch/unzip
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
    export PYTHONPATH="/${ROS_PREFIX}/lib/python3.5/site-packages:${PYTHONPATH}"    export PYTHONPATH="/${ROS_PREFIX}/lib64/python3.5/site-packages:${PYTHONPATH}"    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
