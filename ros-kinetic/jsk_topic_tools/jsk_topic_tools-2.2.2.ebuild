# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="jsk_topic_tools"
HOMEPAGE="http://ros.org/wiki/jsk_topic_tools"
SRC_URI="https://github.com/tork-a/jsk_common-release/archive/release/kinetic/jsk_topic_tools/2.2.2-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/diagnostic_msgs
    ros-kinetic/nodelet
    ros-kinetic/roslaunch
    ros-kinetic/dynamic_tf_publisher
    ros-kinetic/image_transport
    ros-kinetic/diagnostic_updater
    ros-kinetic/tf
    ros-kinetic/sensor_msgs
    ros-kinetic/roscpp
    ros-kinetic/eigen_conversions
    ros-kinetic/message_runtime
    ros-kinetic/sound_play
    ros-kinetic/rostime
    ros-kinetic/geometry_msgs
    ros-kinetic/std_msgs
    ros-kinetic/std_srvs
    ros-kinetic/rostopic
    ros-kinetic/rosnode
    ros-kinetic/topic_tools
    dev-python/numpy
    dev-libs/scipy
    media-libs/opencv
"
DEPEND="${RDEPEND}
    ros-kinetic/rostest
    ros-kinetic/message_generation
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
