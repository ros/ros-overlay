# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="The jsk_rviz_plugins package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/jsk_visualization-release/archive/release/indigo/jsk_rviz_plugins/2.1.0-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-indigo/cv_bridge
    ros-indigo/diagnostic_msgs
    ros-indigo/dynamic_reconfigure
    ros-indigo/geometry_msgs
    ros-indigo/image_geometry
    ros-indigo/jsk_footstep_msgs
    ros-indigo/jsk_gui_msgs
    ros-indigo/jsk_hark_msgs
    ros-indigo/jsk_recognition_msgs
    ros-indigo/jsk_recognition_utils
    ros-indigo/jsk_topic_tools
    ros-indigo/message_generation
    ros-indigo/people_msgs
    ros-indigo/rviz
    ros-indigo/std_msgs
    ros-indigo/urdfdom_py
    ros-indigo/view_controller_msgs
    x11-libs/wxGTK
"
DEPEND="${RDEPEND}
    ros-indigo/catkin
    ros-indigo/mk
    ros-indigo/rosbuild
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/indigo"

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
    cd ../../work
    source /${ROS_PREFIX}/setup.bash
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
