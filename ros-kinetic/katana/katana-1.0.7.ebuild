# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://ros.org/wiki/katana"
SRC_URI="https://github.com/uos-gbp/katana_driver-release/archive/release/kinetic/katana/1.0.7-0.tar.gz"

LICENSE="GPL"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/std_srvs
    ros-kinetic/sensor_msgs
    ros-kinetic/roslib
    ros-kinetic/roscpp
    ros-kinetic/moveit_msgs
    ros-kinetic/kni
    ros-kinetic/urdf
    ros-kinetic/control_msgs
    ros-kinetic/tf
    ros-kinetic/geometry_msgs
    ros-kinetic/trajectory_msgs
    ros-kinetic/katana_msgs
    ros-kinetic/actionlib
    sci-libs/armadillo
"
DEPEND="
    ros-kinetic/std_srvs
    ros-kinetic/sensor_msgs
    ros-kinetic/roslib
    ros-kinetic/roscpp
    ros-kinetic/moveit_msgs
    ros-kinetic/kni
    ros-kinetic/urdf
    ros-kinetic/control_msgs
    ros-kinetic/tf
    ros-kinetic/geometry_msgs
    ros-kinetic/trajectory_msgs
    ros-kinetic/katana_msgs
    ros-kinetic/actionlib
    sci-libs/armadillo
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
