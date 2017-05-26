# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Follower for the turtlebot. Follows humans and robots around by following the centroid of a box points in front of the turtlebot."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/turtlebot-release/turtlebot_apps-release/archive/release/kinetic/turtlebot_follower/2.3.7-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/turtlebot_teleop
    ros-kinetic/depth_image_proc
    ros-kinetic/nodelet
    ros-kinetic/topic_tools
    ros-kinetic/roscpp
    ros-kinetic/visualization_msgs
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/turtlebot_bringup
    ros-kinetic/turtlebot_msgs
"
DEPEND="
    ros-kinetic/depth_image_proc
    ros-kinetic/nodelet
    ros-kinetic/roscpp
    ros-kinetic/visualization_msgs
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/turtlebot_msgs
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
