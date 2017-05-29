# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="ROS communications-related packages, including core client libraries (roscpp, ro"
HOMEPAGE="http://www.ros.org/wiki/ros_comm"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/kinetic/ros_comm/1.12.7-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/rosservice
    ros-kinetic/rostest
    ros-kinetic/rosbag
    ros-kinetic/roscpp
    ros-kinetic/roswtf
    ros-kinetic/ros
    ros-kinetic/rosmsg
    ros-kinetic/std_srvs
    ros-kinetic/rosnode
    ros-kinetic/roslaunch
    ros-kinetic/rosparam
    ros-kinetic/rosconsole
    ros-kinetic/rosmaster
    ros-kinetic/roslisp
    ros-kinetic/xmlrpcpp
    ros-kinetic/message_filters
    ros-kinetic/rosgraph_msgs
    ros-kinetic/rospy
    ros-kinetic/rosgraph
    ros-kinetic/topic_tools
    ros-kinetic/rosout
    ros-kinetic/rostopic
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
    source /${ROS_PREFIX}/setup.bash
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
