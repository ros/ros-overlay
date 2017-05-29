# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="The jsk_rviz_plugins package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/jsk_visualization-release/archive/release/kinetic/jsk_rviz_plugins/2.1.1-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/jsk_recognition_utils
    ros-kinetic/diagnostic_msgs
    ros-kinetic/geometry_msgs
    ros-kinetic/jsk_gui_msgs
    ros-kinetic/jsk_topic_tools
    ros-kinetic/image_geometry
    ros-kinetic/std_msgs
    ros-kinetic/urdfdom_py
    ros-kinetic/jsk_footstep_msgs
    ros-kinetic/people_msgs
    ros-kinetic/rviz
    ros-kinetic/cv_bridge
    ros-kinetic/message_generation
    ros-kinetic/jsk_recognition_msgs
    ros-kinetic/view_controller_msgs
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/jsk_hark_msgs
"
DEPEND="${RDEPEND}
    ros-kinetic/mk
    ros-kinetic/rosbuild
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
    source /${ROS_PREFIX}/setup.bash
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e ${D}/${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
