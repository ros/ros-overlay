# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="A ROS node that simply forwards odometry information."
HOMEPAGE="http://wiki.ros.org/fake_localization"
SRC_URI="https://github.com/ros-gbp/navigation-release/archive/release/kinetic/fake_localization/1.14.0-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/rospy
    ros-kinetic/rosconsole
    ros-kinetic/message_filters
    ros-kinetic/nav_msgs
    ros-kinetic/roscpp
    ros-kinetic/tf
    ros-kinetic/geometry_msgs
"
DEPEND="
    ros-kinetic/rospy
    ros-kinetic/rosconsole
    ros-kinetic/angles
    ros-kinetic/message_filters
    ros-kinetic/nav_msgs
    ros-kinetic/roscpp
    ros-kinetic/tf
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
