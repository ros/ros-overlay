# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="ROS communications-related packages, including core client libraries (roscpp, rospy) and graph introspection tools (rostopic, rosnode, rosservice, rosparam)."
HOMEPAGE="http://www.ros.org/wiki/ros_comm"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/kinetic/ros_comm/1.12.7-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/std_srvs
    ros-kinetic/rosservice
    ros-kinetic/roscpp
    ros-kinetic/rosbag
    ros-kinetic/roslaunch
    ros-kinetic/rosmaster
    ros-kinetic/rospy
    ros-kinetic/rosout
    ros-kinetic/rosgraph
    ros-kinetic/rosnode
    ros-kinetic/roswtf
    ros-kinetic/rosparam
    ros-kinetic/rostest
    ros-kinetic/rosmsg
    ros-kinetic/message_filters
    ros-kinetic/rostopic
    ros-kinetic/ros
    ros-kinetic/rosgraph_msgs
    ros-kinetic/rosconsole
    ros-kinetic/topic_tools
    ros-kinetic/xmlrpcpp
    ros-kinetic/roslisp
"
DEPEND="
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo

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
    echo ""
}

pkg_postinst() {
    cd ../work
    source /opt/ros/kinetic/setup.bash
    catkin_make_isolated --install --install-space="/opt/ros/kinetic" || die
}
