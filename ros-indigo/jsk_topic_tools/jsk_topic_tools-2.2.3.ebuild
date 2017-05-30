# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="jsk_topic_tools"
HOMEPAGE="http://ros.org/wiki/jsk_topic_tools"
SRC_URI="https://github.com/tork-a/jsk_common-release/archive/release/indigo/jsk_topic_tools/2.2.3-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/topic_tools
    ros-indigo/std_msgs
    ros-indigo/rosnode
    ros-indigo/dynamic_tf_publisher
    ros-indigo/image_transport
    ros-indigo/message_runtime
    ros-indigo/sound_play
    ros-indigo/rostopic
    ros-indigo/eigen_conversions
    ros-indigo/diagnostic_msgs
    ros-indigo/sensor_msgs
    ros-indigo/nodelet
    ros-indigo/roslaunch
    ros-indigo/roscpp
    ros-indigo/std_srvs
    ros-indigo/tf
    ros-indigo/diagnostic_updater
    ros-indigo/geometry_msgs
    ros-indigo/rostime
    media-libs/opencv
    dev-python/numpy
    dev-libs/scipy
"
DEPEND="${RDEPEND}
    ros-indigo/message_generation
    ros-indigo/rostest
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
