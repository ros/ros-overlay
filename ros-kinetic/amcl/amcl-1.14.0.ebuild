# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://wiki.ros.org/amcl"
SRC_URI="https://github.com/ros-gbp/navigation-release/archive/release/kinetic/amcl/1.14.0-0.tar.gz"

LICENSE="LGPL"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/rosbag
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/tf
    ros-kinetic/roscpp
    ros-kinetic/nav_msgs
"
DEPEND="
    ros-kinetic/std_srvs
    ros-kinetic/message_filters
    ros-kinetic/nav_msgs
    ros-kinetic/rosbag
    ros-kinetic/roscpp
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/tf
    ros-kinetic/rostest
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
