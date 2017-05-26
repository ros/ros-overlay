# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="resized_image_transport"
HOMEPAGE="http://ros.org/wiki/resized_image_transport"
SRC_URI="https://github.com/tork-a/jsk_recognition-release/archive/release/kinetic/resized_image_transport/1.1.1-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/std_srvs
    ros-kinetic/nodelet
    ros-kinetic/image_transport
    ros-kinetic/jsk_topic_tools
    ros-kinetic/sensor_msgs
    ros-kinetic/cv_bridge
    ros-kinetic/message_runtime
"
DEPEND="
    ros-kinetic/std_srvs
    ros-kinetic/nodelet
    ros-kinetic/image_transport
    ros-kinetic/jsk_topic_tools
    ros-kinetic/sensor_msgs
    ros-kinetic/cv_bridge
    ros-kinetic/message_generation
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
