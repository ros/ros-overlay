# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="PCL (Point Cloud Library) ROS interface stack. PCL-ROS is the preferred
  bridge for 3D applications involving n-D Point Clouds and 3D geometry
  processing in ROS."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/perception_pcl-release/archive/release/lunar/pcl_ros/1.5.3-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/dynamic_reconfigure
    ros-lunar/tf2_eigen
    ros-lunar/pcl_conversions
    ros-lunar/message_filters
    ros-lunar/pluginlib
    ros-lunar/std_msgs
    ros-lunar/rosbag
    ros-lunar/pcl_msgs
    ros-lunar/sensor_msgs
    ros-lunar/nodelet_topic_tools
    ros-lunar/tf
    ros-lunar/nodelet
    ros-lunar/roscpp
    eigen
    libvtk-java
    proj
    libpcl-all-dev
    qtbase5-dev
"
DEPEND="
    ros-lunar/rosconsole
    ros-lunar/pcl_conversions
    ros-lunar/pcl_msgs
    ros-lunar/nodelet_topic_tools
    ros-lunar/cmake_modules
    ros-lunar/roscpp
    ros-lunar/roslib
    ros-lunar/tf
    ros-lunar/nodelet
    ros-lunar/message_filters
    ros-lunar/sensor_msgs
    ros-lunar/std_msgs
    ros-lunar/tf2_eigen
    ros-lunar/dynamic_reconfigure
    ros-lunar/genmsg
    ros-lunar/pluginlib
    ros-lunar/rosbag
    eigen
    qtbase5-dev
    libpcl-all-dev
    libvtk-java
    proj
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
