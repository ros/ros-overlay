# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="RTAB-Map's ros-pkg. RTAB-Map is a RGB-D SLAM approach with real-time constraints."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/introlab/rtabmap_ros-release/archive/release/kinetic/rtabmap_ros/0.11.13-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/message_filters
    ros-kinetic/sensor_msgs
    ros-kinetic/pcl_conversions
    ros-kinetic/tf2_ros
    ros-kinetic/std_srvs
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/tf
    ros-kinetic/visualization_msgs
    ros-kinetic/octomap_ros
    ros-kinetic/image_transport_plugins
    ros-kinetic/stereo_msgs
    ros-kinetic/image_transport
    ros-kinetic/geometry_msgs
    ros-kinetic/rtabmap
    ros-kinetic/rospy
    ros-kinetic/laser_geometry
    ros-kinetic/nav_msgs
    ros-kinetic/eigen_conversions
    ros-kinetic/std_msgs
    ros-kinetic/cv_bridge
    ros-kinetic/tf_conversions
    ros-kinetic/class_loader
    ros-kinetic/image_geometry
    ros-kinetic/roscpp
    ros-kinetic/costmap_2d
    ros-kinetic/rviz
    ros-kinetic/nodelet
    ros-kinetic/move_base_msgs
    ros-kinetic/pcl_ros
"
DEPEND="${RDEPEND}
    sci-libs/pcl
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
    source /opt/ros/kinetic/setup.bash
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
    rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
}
