# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="ROS communications-related packages, including core client libraries (roscpp, ro"
HOMEPAGE="http://www.ros.org/wiki/ros_comm"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/kinetic/ros_comm/1.12.7-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-kinetic/message_filters
    ros-kinetic/ros
    ros-kinetic/rosbag
    ros-kinetic/rosconsole
    ros-kinetic/roscpp
    ros-kinetic/rosgraph
    ros-kinetic/rosgraph_msgs
    ros-kinetic/roslaunch
    ros-kinetic/roslisp
    ros-kinetic/rosmaster
    ros-kinetic/rosmsg
    ros-kinetic/rosnode
    ros-kinetic/rosout
    ros-kinetic/rosparam
    ros-kinetic/rospy
    ros-kinetic/rosservice
    ros-kinetic/rostest
    ros-kinetic/rostopic
    ros-kinetic/roswtf
    ros-kinetic/std_srvs
    ros-kinetic/topic_tools
    ros-kinetic/xmlrpcpp
"
DEPEND="${RDEPEND}
    ros-kinetic/catkin
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
    export PYTHONPATH="/${ROS_PREFIX}/lib/python3.5/site-packages:${PYTHONPATH}"
    export PYTHONPATH="/${ROS_PREFIX}/lib64/python3.5/site-packages:${PYTHONPATH}"
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
