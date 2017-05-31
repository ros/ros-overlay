# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="PCL (Point Cloud Library) ROS interface stack. PCL-ROS is the preferred
  bridge"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/perception_pcl-release/archive/release/lunar/pcl_ros/1.5.3-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/nodelet_topic_tools
    ros-lunar/tf2_eigen
    ros-lunar/pcl_conversions
    ros-lunar/nodelet
    ros-lunar/dynamic_reconfigure
    ros-lunar/pluginlib
    ros-lunar/rosbag
    ros-lunar/sensor_msgs
    ros-lunar/std_msgs
    ros-lunar/tf
    ros-lunar/roscpp
    ros-lunar/message_filters
    ros-lunar/pcl_msgs
    sci-libs/pcl
    dev-cpp/eigen
    sci-libs/vtk
    dev-qt/qtcore
    sci-libs/proj
"
DEPEND="${RDEPEND}
    ros-lunar/roslib
    ros-lunar/genmsg
    ros-lunar/cmake_modules
    ros-lunar/rosconsole
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
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
