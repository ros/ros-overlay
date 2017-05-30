# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="jsk_pr2_startup"
HOMEPAGE="http://ros.org/wiki/jsk_pr2_startup"
SRC_URI="https://github.com/tork-a/jsk_robot-release/archive/release/indigo/jsk_pr2_startup/1.0.6-2.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/pr2_gazebo
    ros-indigo/jsk_interactive_marker
    ros-indigo/pr2_mannequin_mode
    ros-indigo/jsk_robot_startup
    ros-indigo/social_navigation_layers
    ros-indigo/pr2_arm_kinematics
    ros-indigo/pr2_navigation
    ros-indigo/pr2_move_base
    ros-indigo/dwa_local_planner
    ros-indigo/pr2_navigation_perception
    ros-indigo/jsk_maps
    ros-indigo/pr2_tuck_arms_action
    ros-indigo/eusurdf
    ros-indigo/pr2_gripper_sensor_action
    ros-indigo/semantic_point_annotator
    ros-indigo/pr2_teleop_general
    ros-indigo/jsk_network_tools
    ros-indigo/pr2_navigation_config
"
DEPEND="${RDEPEND}
    ros-indigo/topic_tools
    ros-indigo/mjpeg_server
    ros-indigo/rostwitter
    ros-indigo/resized_image_transport
    ros-indigo/imagesift
    ros-indigo/jsk_perception
    ros-indigo/std_msgs
    ros-indigo/map_server
    ros-indigo/tf2_ros
    ros-indigo/dynamic_tf_publisher
    ros-indigo/leg_detector
    ros-indigo/image_view2
    ros-indigo/rqt_gui
    ros-indigo/sound_play
    ros-indigo/roseus
    ros-indigo/jsk_topic_tools
    ros-indigo/openni_camera
    ros-indigo/face_detector
    ros-indigo/rospy
    ros-indigo/move_base_msgs
    ros-indigo/voice_text
    ros-indigo/jsk_pcl_ros
    ros-indigo/rqt_py_common
    ros-indigo/move_base
    ros-indigo/people_velocity_tracker
    ros-indigo/amcl
    ros-indigo/pr2_base_trajectory_action
    ros-indigo/tf2
    ros-indigo/rqt_gui_py
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
