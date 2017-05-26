# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="tf is a package that lets the user keep track of multiple coordinate
frames over time. tf maintains the relationship between coordinate
frames in a tree structure buffered in time, and lets the user
transform points, vectors, etc between any two coordinate frames at
any desired point in time."
HOMEPAGE="http://www.ros.org/wiki/tf"
SRC_URI="https://github.com/ros-gbp/geometry-release/archive/release/lunar/tf/1.11.8-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/geometry_msgs
    ros-lunar/roscpp
    ros-lunar/std_msgs
    ros-lunar/message_runtime
    ros-lunar/tf2
    ros-lunar/rosconsole
    ros-lunar/roswtf
    ros-lunar/sensor_msgs
    ros-lunar/tf2_ros
    ros-lunar/message_filters
    media-gfx/graphviz
"
DEPEND="${RDEPEND}
    ros-lunar/message_generation
    ros-lunar/rostest
    ros-lunar/angles
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
    cd ../../work
    source /opt/ros/lunar/setup.bash
    catkin_make_isolated --install --install-space="${D}" || die
}

pkg_postinst() {
    cd ${D}
    cp -R lib* /opt/ros/lunar
    cp -R share /opt/ros/lunar
    cp -R bin /opt/ros/lunar
    cp -R include /opt/ros/lunar
}
