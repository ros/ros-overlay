# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="ROS communications-related packages, including core client libraries (roscpp, ro"
HOMEPAGE="http://www.ros.org/wiki/ros_comm"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/lunar/ros_comm/1.13.0-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/rosparam
    ros-lunar/roslaunch
    ros-lunar/ros
    ros-lunar/rosconsole
    ros-lunar/roswtf
    ros-lunar/rosmaster
    ros-lunar/rosbag
    ros-lunar/rosout
    ros-lunar/rosmsg
    ros-lunar/roslisp
    ros-lunar/rosgraph_msgs
    ros-lunar/roscpp
    ros-lunar/rosgraph
    ros-lunar/rospy
    ros-lunar/xmlrpcpp
    ros-lunar/std_srvs
    ros-lunar/rostest
    ros-lunar/rostopic
    ros-lunar/rosnode
    ros-lunar/topic_tools
    ros-lunar/rosservice
    ros-lunar/message_filters
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
