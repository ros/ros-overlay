# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://ros.org/wiki/jsk_pcl_ros"
SRC_URI="https://github.com/tork-a/jsk_recognition-release/archive/release/kinetic/jsk_pcl_ros/1.1.1-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/pcl_conversions
    ros-kinetic/stereo_msgs
    ros-kinetic/pcl_msgs
    ros-kinetic/interactive_markers
    ros-kinetic/diagnostic_updater
    ros-kinetic/jsk_recognition_utils
    ros-kinetic/openni2_launch
    ros-kinetic/jsk_pcl_ros_utils
    ros-kinetic/pcl_ros
    ros-kinetic/nav_msgs
    ros-kinetic/python-sklearn
    ros-kinetic/octomap_server
    ros-kinetic/octomap
    ros-kinetic/eigen_conversions
    ros-kinetic/topic_tools
    ros-kinetic/jsk_footstep_msgs
    ros-kinetic/tf_conversions
    ros-kinetic/tf2_ros
    ros-kinetic/visualization_msgs
    ros-kinetic/tf
    ros-kinetic/jsk_recognition_msgs
    ros-kinetic/jsk_topic_tools
    ros-kinetic/nodelet
    ros-kinetic/yaml-cpp
    ros-kinetic/image_geometry
    ros-kinetic/resized_image_transport
    ros-kinetic/sensor_msgs
    ros-kinetic/std_msgs
    ros-kinetic/moveit_ros_perception
    ros-kinetic/image_transport
    ros-kinetic/robot_self_filter
    ros-kinetic/octomap_ros
    ros-kinetic/kdl_conversions
    ros-kinetic/roscpp_tutorials
    ros-kinetic/laser_assembler
    ros-kinetic/octomap_msgs
    ros-kinetic/cv_bridge
    ros-kinetic/diagnostic_msgs
    ros-kinetic/image_view2
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/moveit_core
    ros-kinetic/rosboost_cfg
    ros-kinetic/jsk_data
    ros-kinetic/std_srvs
    ros-kinetic/boost
    ros-kinetic/kdl_parser
    ros-kinetic/openni_launch
    ros-kinetic/geometry_msgs

"
DEPEND="${RDEPEND}
    ros-kinetic/pcl_conversions
    ros-kinetic/stereo_msgs
    ros-kinetic/pcl_msgs
    ros-kinetic/octomap_msgs
    ros-kinetic/diagnostic_updater
    ros-kinetic/jsk_recognition_utils
    ros-kinetic/jsk_pcl_ros_utils
    ros-kinetic/pcl_ros
    ros-kinetic/nav_msgs
    ros-kinetic/python-sklearn
    ros-kinetic/octomap_server
    ros-kinetic/eigen_conversions
    ros-kinetic/jsk_footstep_msgs
    ros-kinetic/tf_conversions
    ros-kinetic/tf2_ros
    ros-kinetic/visualization_msgs
    ros-kinetic/tf
    ros-kinetic/jsk_recognition_msgs
    ros-kinetic/jsk_topic_tools
    ros-kinetic/nodelet
    ros-kinetic/yaml-cpp
    ros-kinetic/image_geometry
    ros-kinetic/interactive_markers
    ros-kinetic/sensor_msgs
    ros-kinetic/std_msgs
    ros-kinetic/moveit_ros_perception
    ros-kinetic/image_transport
    ros-kinetic/robot_self_filter
    ros-kinetic/octomap_ros
    ros-kinetic/kdl_conversions
    ros-kinetic/roscpp_tutorials
    ros-kinetic/laser_assembler
    ros-kinetic/cv_bridge
    ros-kinetic/diagnostic_msgs
    ros-kinetic/image_view2
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/moveit_core
    ros-kinetic/rosboost_cfg
    ros-kinetic/jsk_data
    ros-kinetic/std_srvs
    ros-kinetic/boost
    ros-kinetic/kdl_parser
    ros-kinetic/octomap
    ros-kinetic/geometry_msgs

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
