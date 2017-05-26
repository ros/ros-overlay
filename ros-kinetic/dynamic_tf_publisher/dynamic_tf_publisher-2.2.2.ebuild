# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="dynamically set the tf trensformation"
HOMEPAGE="http://ros.org/wiki/dynamic_tf_publisher"
SRC_URI="https://github.com/tork-a/jsk_common-release/archive/release/kinetic/dynamic_tf_publisher/2.2.2-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/tf
    ros-kinetic/rospy
    ros-kinetic/message_runtime
    ros-kinetic/geometry_msgs
"
DEPEND="
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/rospy
    ros-kinetic/tf
    ros-kinetic/message_generation
    ros-kinetic/geometry_msgs
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
