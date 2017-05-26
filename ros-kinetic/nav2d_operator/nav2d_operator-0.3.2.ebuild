# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="The operator is a lightweight, purely reactive obstacle-avoidance
    module for mobile robots moving in a planar environment. The operator node
    works by evaluating a set of predefined motion primitives based on a local
    costmap and a desired direction. The best evaluated motion command will be
    send to the mobile base."
HOMEPAGE="http://wiki.ros.org/nav2d_operator"
SRC_URI="https://github.com/skasperski/navigation_2d-release/archive/release/kinetic/nav2d_operator/0.3.2-0.tar.gz"

LICENSE="GPLv3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/roscpp
    ros-kinetic/message_runtime
    ros-kinetic/costmap_2d
    ros-kinetic/sensor_msgs
    ros-kinetic/tf
"
DEPEND="
    ros-kinetic/roscpp
    ros-kinetic/costmap_2d
    ros-kinetic/tf
    ros-kinetic/message_generation
    ros-kinetic/sensor_msgs
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
