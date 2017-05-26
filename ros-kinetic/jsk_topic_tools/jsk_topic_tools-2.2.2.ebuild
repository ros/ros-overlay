# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="jsk_topic_tools"
HOMEPAGE="http://ros.org/wiki/jsk_topic_tools"
SRC_URI="https://github.com/tork-a/jsk_common-release/archive/release/kinetic/jsk_topic_tools/2.2.2-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/std_srvs
    ros-kinetic/rostime
    ros-kinetic/diagnostic_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/roscpp
    ros-kinetic/roslaunch
    ros-kinetic/dynamic_tf_publisher
    ros-kinetic/diagnostic_updater
    ros-kinetic/rosnode
    ros-kinetic/message_runtime
    ros-kinetic/sound_play
    ros-kinetic/image_transport
    ros-kinetic/tf
    ros-kinetic/std_msgs
    ros-kinetic/geometry_msgs
    ros-kinetic/rostopic
    ros-kinetic/nodelet
    ros-kinetic/topic_tools
    ros-kinetic/eigen_conversions
    dev-python/numpy
    dev-libs/scipy
    media-libs/opencv
"
DEPEND="
    ros-kinetic/std_srvs
    ros-kinetic/rostime
    ros-kinetic/image_transport
    ros-kinetic/nodelet
    ros-kinetic/topic_tools
    ros-kinetic/diagnostic_msgs
    ros-kinetic/dynamic_tf_publisher
    ros-kinetic/diagnostic_updater
    ros-kinetic/rosnode
    ros-kinetic/roscpp
    ros-kinetic/roslaunch
    ros-kinetic/message_generation
    ros-kinetic/std_msgs
    ros-kinetic/geometry_msgs
    ros-kinetic/rostest
    ros-kinetic/rostopic
    ros-kinetic/tf
    ros-kinetic/eigen_conversions
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo

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
    echo ""
}

pkg_postinst() {
    cd ../work
    source /opt/ros/kinetic/setup.bash
    catkin_make_isolated --install --install-space="/opt/ros/kinetic" || die
}
