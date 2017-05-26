# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="ROS communications-related packages, including core client libraries (roscpp, rospy) and graph introspection tools (rostopic, rosnode, rosservice, rosparam)."
HOMEPAGE="http://www.ros.org/wiki/ros_comm"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/lunar/ros_comm/1.13.0-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/roslisp
    ros-lunar/rosconsole
    ros-lunar/std_srvs
    ros-lunar/rosmaster
    ros-lunar/rostest
    ros-lunar/rosmsg
    ros-lunar/xmlrpcpp
    ros-lunar/rosout
    ros-lunar/topic_tools
    ros-lunar/rosparam
    ros-lunar/rospy
    ros-lunar/roscpp
    ros-lunar/rosbag
    ros-lunar/roslaunch
    ros-lunar/rostopic
    ros-lunar/rosgraph
    ros-lunar/roswtf
    ros-lunar/message_filters
    ros-lunar/rosnode
    ros-lunar/rosservice
    ros-lunar/rosgraph_msgs
    ros-lunar/ros
"
DEPEND="${RDEPEND}
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
    cd ../../work
    source /opt/ros/lunar/setup.bash
    catkin_make_isolated --install --install-space="${D}" || die
}

pkg_postinst() {
    cd ${D}
    cp -R lib* /opt/ros/lunar
    cp -R share /opt/ros/lunar
    cp -R bin /opt/ros/lunar
    cp -R include /opt/ros/lunar
}
