# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Components of MoveIt connecting to perception"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_ros_perception/0.9.6-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/rosconsole
    ros-kinetic/image_transport
    ros-kinetic/message_filters
    ros-kinetic/octomap
    ros-kinetic/cv_bridge
    ros-kinetic/sensor_msgs
    ros-kinetic/roscpp
    ros-kinetic/moveit_msgs
    ros-kinetic/tf_conversions
    ros-kinetic/tf
    ros-kinetic/moveit_core
    ros-kinetic/urdf
    ros-kinetic/pluginlib
    media-libs/glew
    media-libs/mesa
    media-libs/freeglut
"
DEPEND="
    ros-kinetic/rosconsole
    ros-kinetic/image_transport
    ros-kinetic/message_filters
    ros-kinetic/octomap
    ros-kinetic/cv_bridge
    ros-kinetic/sensor_msgs
    ros-kinetic/roscpp
    ros-kinetic/moveit_msgs
    ros-kinetic/tf_conversions
    ros-kinetic/tf
    ros-kinetic/moveit_core
    ros-kinetic/urdf
    ros-kinetic/pluginlib
    media-libs/glew
    dev-cpp/eigen
    media-libs/mesa
    media-libs/freeglut
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
