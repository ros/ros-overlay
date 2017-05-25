# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://www.ros.org/wiki/ros_comm"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/kinetic/ros_comm/1.12.7-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/rosconsole
    ros-kinetic/rosgraph
    ros-kinetic/ros
    ros-kinetic/roscpp
    ros-kinetic/rosparam
    ros-kinetic/rosout
    ros-kinetic/topic_tools
    ros-kinetic/rostest
    ros-kinetic/rostopic
    ros-kinetic/roswtf
    ros-kinetic/roslaunch
    ros-kinetic/roslisp
    ros-kinetic/message_filters
    ros-kinetic/rosservice
    ros-kinetic/rospy
    ros-kinetic/rosgraph_msgs
    ros-kinetic/std_srvs
    ros-kinetic/xmlrpcpp
    ros-kinetic/rosmaster
    ros-kinetic/rosmsg
    ros-kinetic/rosnode
    ros-kinetic/rosbag

"
DEPEND="${RDEPEND}

"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo

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
    echo ""
}

pkg_postinst() {
    cd ../work
    source /opt/ros/kinetic/setup.bash
    catkin_make_isolated --install --install-space="/opt/ros/kinetic" || die
}
