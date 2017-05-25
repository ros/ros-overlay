# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/rocon_multimaster-release/archive/release/kinetic/rocon_gateway/0.8.1-2.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/roslib
    ros-kinetic/std_srvs
    ros-kinetic/rocon_python_utils
    ros-kinetic/zeroconf_avahi
    ros-kinetic/zeroconf_msgs
    ros-kinetic/gateway_msgs
    ros-kinetic/rosgraph
    ros-kinetic/rocon_gateway_utils
    ros-kinetic/rosparam
    ros-kinetic/rocon_python_redis
    ros-kinetic/rocon_hub_client
    ros-kinetic/rospy
    ros-kinetic/rocon_python_wifi
    ros-kinetic/rosservice
    ros-kinetic/rocon_python_comms
    ros-kinetic/rocon_console
    ros-kinetic/python-crypto
    ros-kinetic/rostopic

"
DEPEND="${RDEPEND}
    ros-kinetic/roslint

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
