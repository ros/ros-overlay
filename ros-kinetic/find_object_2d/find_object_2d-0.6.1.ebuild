# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="The find_object_2d package"
HOMEPAGE="http://find-object.googlecode.com"
SRC_URI="https://github.com/introlab/find_object_2d-release/archive/release/kinetic/find_object_2d/0.6.1-5.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/rospy
    ros-kinetic/std_srvs
    ros-kinetic/qt_gui_cpp
    ros-kinetic/image_transport
    ros-kinetic/sensor_msgs
    ros-kinetic/message_filters
    ros-kinetic/cv_bridge
    ros-kinetic/roscpp
    ros-kinetic/tf
    ros-kinetic/std_msgs
"
DEPEND="
    ros-kinetic/rospy
    ros-kinetic/std_srvs
    ros-kinetic/qt_gui_cpp
    ros-kinetic/image_transport
    ros-kinetic/sensor_msgs
    ros-kinetic/message_filters
    ros-kinetic/cv_bridge
    ros-kinetic/roscpp
    ros-kinetic/tf
    ros-kinetic/std_msgs
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
