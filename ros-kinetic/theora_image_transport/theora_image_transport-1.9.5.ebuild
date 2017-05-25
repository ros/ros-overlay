# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://www.ros.org/wiki/image_transport_plugins"
SRC_URI="https://github.com/ros-gbp/image_transport_plugins-release/archive/release/kinetic/theora_image_transport/1.9.5-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/pluginlib
    ros-kinetic/rosbag
    ros-kinetic/message_runtime
    ros-kinetic/std_msgs
    ros-kinetic/image_transport
    ros-kinetic/libogg
    ros-kinetic/cv_bridge
    ros-kinetic/libtheora

"
DEPEND="${RDEPEND}
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/pluginlib
    ros-kinetic/rosbag
    ros-kinetic/std_msgs
    ros-kinetic/image_transport
    ros-kinetic/libogg
    ros-kinetic/message_generation
    ros-kinetic/cv_bridge
    ros-kinetic/libtheora

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
