# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="object_recognition_core contains tools to launch several recognition pipelines, train objects, store models ..."
HOMEPAGE="wg-perception.github.io/object_recognition_ros"
SRC_URI="https://github.com/ros-gbp/object_recognition_ros-release/archive/release/kinetic/object_recognition_ros/0.3.7-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/object_recognition_msgs
    ros-kinetic/ecto_image_pipeline
    ros-kinetic/pluginlib
    ros-kinetic/object_recognition_core
    ros-kinetic/rostopic
    ros-kinetic/ecto
    ros-kinetic/geometric_shapes
    ros-kinetic/ecto_ros
    ros-kinetic/actionlib
    dev-libs/boost
"
DEPEND="
    ros-kinetic/geometric_shapes
    ros-kinetic/cmake_modules
    ros-kinetic/object_recognition_msgs
    ros-kinetic/ecto_image_pipeline
    ros-kinetic/pluginlib
    ros-kinetic/object_recognition_core
    ros-kinetic/ecto
    ros-kinetic/ecto_ros
    ros-kinetic/actionlib
    dev-libs/boost
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
