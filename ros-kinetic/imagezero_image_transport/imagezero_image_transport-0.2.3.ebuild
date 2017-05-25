# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://www.ros.org/wiki/image_transport_plugins"
SRC_URI="https://github.com/swri-robotics-gbp/imagezero_transport-release/archive/release/kinetic/imagezero_image_transport/0.2.3-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/sensor_msgs
    ros-kinetic/imagezero_ros
    ros-kinetic/message_runtime
    ros-kinetic/cv_bridge
    ros-kinetic/image_transport

"
DEPEND="${RDEPEND}
    ros-kinetic/sensor_msgs
    ros-kinetic/imagezero_ros
    ros-kinetic/message_runtime
    ros-kinetic/cv_bridge
    ros-kinetic/image_transport

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
