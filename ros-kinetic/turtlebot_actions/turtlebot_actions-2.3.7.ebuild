# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="turtlebot_actions provides several basic actionlib actions for the TurtleBot."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/turtlebot-release/turtlebot_apps-release/archive/release/kinetic/turtlebot_actions/2.3.7-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/image_transport
    ros-kinetic/cv_bridge
    ros-kinetic/roscpp
    ros-kinetic/tf
    ros-kinetic/message_runtime
    ros-kinetic/turtlebot_bringup
    ros-kinetic/geometry_msgs
    ros-kinetic/actionlib_msgs
    ros-kinetic/image_geometry
    ros-kinetic/actionlib
    dev-cpp/eigen
"
DEPEND="
    ros-kinetic/cmake_modules
    ros-kinetic/image_transport
    ros-kinetic/cv_bridge
    ros-kinetic/roscpp
    ros-kinetic/tf
    ros-kinetic/message_generation
    ros-kinetic/geometry_msgs
    ros-kinetic/actionlib_msgs
    ros-kinetic/image_geometry
    ros-kinetic/actionlib
    dev-cpp/eigen
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
