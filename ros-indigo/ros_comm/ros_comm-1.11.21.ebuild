# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="ROS communications-related packages, including core client libraries (roscpp, ro"
HOMEPAGE="http://www.ros.org/wiki/ros_comm"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/indigo/ros_comm/1.11.21-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/message_filters
    ros-indigo/ros
    ros-indigo/rosbag
    ros-indigo/rosconsole
    ros-indigo/roscpp
    ros-indigo/rosgraph
    ros-indigo/rosgraph_msgs
    ros-indigo/roslaunch
    ros-indigo/roslisp
    ros-indigo/rosmaster
    ros-indigo/rosmsg
    ros-indigo/rosnode
    ros-indigo/rosout
    ros-indigo/rosparam
    ros-indigo/rospy
    ros-indigo/rosservice
    ros-indigo/rostest
    ros-indigo/rostopic
    ros-indigo/roswtf
    ros-indigo/std_srvs
    ros-indigo/topic_tools
    ros-indigo/xmlrpcpp
"
DEPEND="${RDEPEND}
    ros-indigo/catkin
"

SLOT="0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/indigo"

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
        -DPYTHON_INSTALL_DIR=lib64/python3.5/site-packages
        -DCATKIN_ENABLE_TESTING=OFF
        -DPYTHON_EXECUTABLE=/usr/bin/ros-python-indigo
        -DCATKIN_BUILD_BINARY_PACAKGE=1

     )
    cmake-utils_src_configure
}

src_install() {
    cd ${WORKDIR}/${P}_build
    make install || die
}
