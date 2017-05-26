# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="ROS communications-related packages, including core client libraries (roscpp, rospy) and graph introspection tools (rostopic, rosnode, rosservice, rosparam)."
HOMEPAGE="http://www.ros.org/wiki/ros_comm"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/lunar/ros_comm/1.13.0-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/rosservice
    ros-lunar/rospy
    ros-lunar/std_srvs
    ros-lunar/topic_tools
    ros-lunar/roslisp
    ros-lunar/roswtf
    ros-lunar/rosmaster
    ros-lunar/rosconsole
    ros-lunar/rostest
    ros-lunar/rosnode
    ros-lunar/xmlrpcpp
    ros-lunar/rosparam
    ros-lunar/message_filters
    ros-lunar/roscpp
    ros-lunar/ros
    ros-lunar/rosbag
    ros-lunar/rosgraph_msgs
    ros-lunar/roslaunch
    ros-lunar/rosgraph
    ros-lunar/rostopic
    ros-lunar/rosmsg
    ros-lunar/rosout
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
    source /opt/ros/lunar/setup.bash
    catkin_make_isolated --install --install-space="/opt/ros/lunar" || die
}
