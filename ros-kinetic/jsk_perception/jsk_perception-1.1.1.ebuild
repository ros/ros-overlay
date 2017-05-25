# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://ros.org/wiki/jsk_perception"
SRC_URI="https://github.com/tork-a/jsk_recognition-release/archive/release/kinetic/jsk_perception/1.1.1-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/imagesift
    ros-kinetic/rospack
    ros-kinetic/eigen
    ros-kinetic/image_view
    ros-kinetic/python-h5py
    ros-kinetic/jsk_recognition_utils
    ros-kinetic/python-dlib
    ros-kinetic/posedetection_msgs
    ros-kinetic/python-chainer-pip
    ros-kinetic/pcl_ros
    ros-kinetic/leveldb
    ros-kinetic/roscpp
    ros-kinetic/libcmt
    ros-kinetic/rqt_gui
    ros-kinetic/rostopic
    ros-kinetic/tf
    ros-kinetic/jsk_recognition_msgs
    ros-kinetic/roseus
    ros-kinetic/jsk_topic_tools
    ros-kinetic/nodelet
    ros-kinetic/yaml-cpp
    ros-kinetic/image_geometry
    ros-kinetic/jsk_gui_msgs
    ros-kinetic/message_runtime
    ros-kinetic/sensor_msgs
    ros-kinetic/opencv_apps
    ros-kinetic/image_transport
    ros-kinetic/robot_self_filter
    ros-kinetic/python-sklearn
    ros-kinetic/rospy
    ros-kinetic/angles
    ros-kinetic/std_msgs
    ros-kinetic/openni2_launch
    ros-kinetic/python-fcn-pip
    ros-kinetic/cv_bridge
    ros-kinetic/image_view2
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/jsk_data
    ros-kinetic/sound_play
    ros-kinetic/mk
    ros-kinetic/geometry_msgs
    ros-kinetic/rosbag

"
DEPEND="${RDEPEND}
    ros-kinetic/rospack
    ros-kinetic/eigen
    ros-kinetic/cmake_modules
    ros-kinetic/jsk_recognition_utils
    ros-kinetic/posedetection_msgs
    ros-kinetic/pcl_ros
    ros-kinetic/git
    ros-kinetic/roscpp
    ros-kinetic/libcmt
    ros-kinetic/yaml-cpp
    ros-kinetic/message_generation
    ros-kinetic/jsk_recognition_msgs
    ros-kinetic/jsk_topic_tools
    ros-kinetic/nodelet
    ros-kinetic/image_geometry
    ros-kinetic/std_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/opencv_apps
    ros-kinetic/image_transport
    ros-kinetic/robot_self_filter
    ros-kinetic/tf
    ros-kinetic/roseus
    ros-kinetic/angles
    ros-kinetic/cv_bridge
    ros-kinetic/image_view2
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/jsk_data
    ros-kinetic/mk
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
