# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://find-object.googlecode.com"
SRC_URI="https://github.com/introlab/find_object_2d-release/archive/release/kinetic/find_object_2d/0.6.1-5.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/std_srvs
    ros-kinetic/roscpp
    ros-kinetic/message_filters
    ros-kinetic/std_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/image_transport
    ros-kinetic/qt_gui_cpp
    ros-kinetic/rospy
    ros-kinetic/tf
    ros-kinetic/cv_bridge

"
DEPEND="${RDEPEND}
    ros-kinetic/std_srvs
    ros-kinetic/roscpp
    ros-kinetic/message_filters
    ros-kinetic/std_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/image_transport
    ros-kinetic/qt_gui_cpp
    ros-kinetic/rospy
    ros-kinetic/tf
    ros-kinetic/cv_bridge

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
