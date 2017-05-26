# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="The manipulation_msgs package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/manipulation_msgs-release/archive/release/kinetic/manipulation_msgs/0.2.1-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/sensor_msgs
    ros-kinetic/household_objects_database_msgs
    ros-kinetic/message_runtime
    ros-kinetic/message_generation
    ros-kinetic/std_msgs
    ros-kinetic/geometry_msgs
    ros-kinetic/shape_msgs
    ros-kinetic/actionlib_msgs
"
DEPEND="
    ros-kinetic/sensor_msgs
    ros-kinetic/household_objects_database_msgs
    ros-kinetic/std_msgs
    ros-kinetic/message_generation
    ros-kinetic/geometry_msgs
    ros-kinetic/actionlib_msgs
    ros-kinetic/shape_msgs
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
