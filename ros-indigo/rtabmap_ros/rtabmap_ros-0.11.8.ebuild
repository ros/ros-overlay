# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="RTAB-Map's ros-pkg. RTAB-Map is a RGB-D SLAM approach with real-time constraints"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/introlab/rtabmap_ros-release/archive/release/indigo/rtabmap_ros/0.11.8-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/nav_msgs
    ros-indigo/laser_geometry
    ros-indigo/image_transport_plugins
    ros-indigo/std_msgs
    ros-indigo/rviz
    ros-indigo/tf2_ros
    ros-indigo/tf_conversions
    ros-indigo/rtabmap
    ros-indigo/image_transport
    ros-indigo/stereo_msgs
    ros-indigo/eigen_conversions
    ros-indigo/sensor_msgs
    ros-indigo/pcl_conversions
    ros-indigo/cv_bridge
    ros-indigo/costmap_2d
    ros-indigo/nodelet
    ros-indigo/dynamic_reconfigure
    ros-indigo/rospy
    ros-indigo/move_base_msgs
    ros-indigo/roscpp
    ros-indigo/octomap_ros
    ros-indigo/std_srvs
    ros-indigo/visualization_msgs
    ros-indigo/tf
    ros-indigo/class_loader
    ros-indigo/geometry_msgs
    ros-indigo/message_filters
    ros-indigo/pcl_ros
"
DEPEND="${RDEPEND}
    sci-libs/pcl
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/indigo"

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
