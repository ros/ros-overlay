# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="ROS package for Amazon Picking Challenge in May 2015"
HOMEPAGE="http://wiki.ros.org/jsk_2015_05_baxter_apc"
SRC_URI="https://github.com/tork-a/jsk_apc-release/archive/release/indigo/jsk_2015_05_baxter_apc/3.1.0-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/baxter_gazebo
    ros-indigo/baxter_sim_hardware
    ros-indigo/baxtereus
    ros-indigo/dynamic_reconfigure
    ros-indigo/geometry_msgs
    ros-indigo/imagesift
    ros-indigo/jsk_apc2015_common
    ros-indigo/jsk_pcl_ros
    ros-indigo/jsk_recognition_msgs
    ros-indigo/jsk_rqt_plugins
    ros-indigo/message_runtime
    ros-indigo/posedetection_msgs
    ros-indigo/roseus
    ros-indigo/rospy
    ros-indigo/rosserial_arduino
    ros-indigo/rosserial_client
    ros-indigo/sound_play
    ros-indigo/std_msgs
    ros-indigo/turtlebot_description
    dev-python/numpy
    media-libs/opencv
    dev-python/progressbar
    sci-libs/scikits_image
    sci-libs/scikits_learn
    dev-python/termcolor
"
DEPEND="${RDEPEND}
    ros-indigo/baxter_description
    ros-indigo/catkin
    ros-indigo/collada_urdf
    ros-indigo/euscollada
    ros-indigo/message_generation
    ros-indigo/xacro
    sci-electronics/gazebo
"

SLOT="indigo"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="/opt/ros/indigo"

src_unpack() {
    default
    mv *${P}* ${P}
}

src_configure() {
    append-cxxflags "-std=c++11"
    export DEST_SETUP_DIR="${ROS_PREFIX}"
    local mycmakeargs=(
        -DCMAKE_INSTALL_PREFIX=${D%/}${ROS_PREFIX}
        -DCMAKE_PREFIX_PATH=${ROS_PREFIX}
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
