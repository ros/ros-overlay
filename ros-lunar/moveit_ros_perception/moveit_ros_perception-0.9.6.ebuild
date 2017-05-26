# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Components of MoveIt connecting to perception"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/moveit-release/archive/release/lunar/moveit_ros_perception/0.9.6-1.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/message_filters
    ros-lunar/roscpp
    ros-lunar/cv_bridge
    ros-lunar/image_transport
    ros-lunar/urdf
    ros-lunar/sensor_msgs
    ros-lunar/octomap
    ros-lunar/tf_conversions
    ros-lunar/moveit_msgs
    ros-lunar/moveit_core
    ros-lunar/rosconsole
    ros-lunar/pluginlib
    ros-lunar/tf
    media-libs/mesa
    media-libs/glew
    media-libs/freeglut
"
DEPEND="
    ros-lunar/message_filters
    ros-lunar/roscpp
    ros-lunar/cv_bridge
    ros-lunar/image_transport
    ros-lunar/urdf
    ros-lunar/sensor_msgs
    ros-lunar/octomap
    ros-lunar/tf_conversions
    ros-lunar/moveit_msgs
    ros-lunar/moveit_core
    ros-lunar/rosconsole
    ros-lunar/pluginlib
    ros-lunar/tf
    media-libs/mesa
    media-libs/glew
    media-libs/freeglut
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
    source /opt/ros/lunar/setup.bash
    catkin_make_isolated --install --install-space="/opt/ros/lunar" || die
}
