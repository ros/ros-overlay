# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="ROS communications-related packages, including core client libraries (roscpp, ro"
HOMEPAGE="http://www.ros.org/wiki/ros_comm"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/lunar/ros_comm/1.13.0-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-lunar/message_filters
    ros-lunar/ros
    ros-lunar/rosbag
    ros-lunar/rosconsole
    ros-lunar/roscpp
    ros-lunar/rosgraph
    ros-lunar/rosgraph_msgs
    ros-lunar/roslaunch
    ros-lunar/roslisp
    ros-lunar/rosmaster
    ros-lunar/rosmsg
    ros-lunar/rosnode
    ros-lunar/rosout
    ros-lunar/rosparam
    ros-lunar/rospy
    ros-lunar/rosservice
    ros-lunar/rostest
    ros-lunar/rostopic
    ros-lunar/roswtf
    ros-lunar/std_srvs
    ros-lunar/topic_tools
    ros-lunar/xmlrpcpp
"
DEPEND="${RDEPEND}
    ros-lunar/catkin
"

SLOT="0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/lunar"

src_unpack() {
    default
    mv *${P}* ${P}
}

src_configure() {
    append-cxxflags "-std=c++11"
    export DEST_SETUP_DIR="/${ROS_PREFIX}"
    local mycmakeargs=(
        -DCMAKE_INSTALL_PREFIX=${D}${ROS_PREFIX}
        -DCMAKE_PREFIX_PATH=/${ROS_PREFIX}
        -DCATKIN_BUILD_BINARY_PATCKAGE=1
     )
    cmake-utils_src_configure
}

src_install() {
    cd ${WORKDIR}/${P}/build
    make install || die
}
