# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://ros.org/wiki/jsk_topic_tools"
SRC_URI="https://github.com/tork-a/jsk_common-release/archive/release/kinetic/jsk_topic_tools/2.2.2-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/dynamic_tf_publisher
    ros-kinetic/python-scipy
    ros-kinetic/diagnostic_updater
    ros-kinetic/python-numpy
    ros-kinetic/roscpp
    ros-kinetic/eigen_conversions
    ros-kinetic/topic_tools
    ros-kinetic/python-opencv
    ros-kinetic/tf
    ros-kinetic/sound_play
    ros-kinetic/rostopic
    ros-kinetic/rostime
    ros-kinetic/message_runtime
    ros-kinetic/std_msgs
    ros-kinetic/image_transport
    ros-kinetic/diagnostic_msgs
    ros-kinetic/roslaunch
    ros-kinetic/std_srvs
    ros-kinetic/nodelet
    ros-kinetic/geometry_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/rosnode

"
DEPEND="${RDEPEND}
    ros-kinetic/roslaunch
    ros-kinetic/std_srvs
    ros-kinetic/roscpp
    ros-kinetic/std_msgs
    ros-kinetic/rostime
    ros-kinetic/dynamic_tf_publisher
    ros-kinetic/image_transport
    ros-kinetic/eigen_conversions
    ros-kinetic/diagnostic_updater
    ros-kinetic/topic_tools
    ros-kinetic/rostest
    ros-kinetic/geometry_msgs
    ros-kinetic/rostopic
    ros-kinetic/tf
    ros-kinetic/message_generation
    ros-kinetic/rosnode
    ros-kinetic/nodelet
    ros-kinetic/diagnostic_msgs

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
