# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Package which implements capabilities, including code to parse capability interface specs, to parse capability provider specs, and implement the capability server."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/capabilities-release/archive/release/kinetic/capabilities/0.2.0-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/rospy
    ros-kinetic/std_srvs
    ros-kinetic/nodelet
    ros-kinetic/roslaunch
    ros-kinetic/message_runtime
    ros-kinetic/std_msgs
    ros-kinetic/bondpy
    dev-python/pyyaml
"
DEPEND="
    ros-kinetic/rospy
    ros-kinetic/std_srvs
    ros-kinetic/roslaunch
    ros-kinetic/message_generation
    ros-kinetic/std_msgs
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
