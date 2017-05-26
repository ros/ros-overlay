# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="A metapackage to aggregate the packages required to use publish / subscribe, services, launch files, and other core ROS concepts."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/metapackages-release/archive/release/kinetic/ros_core/1.3.1-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/genpy
    ros-kinetic/ros_comm
    ros-kinetic/rospack
    ros-kinetic/std_srvs
    ros-kinetic/cmake_modules
    ros-kinetic/rosgraph_msgs
    ros-kinetic/roslisp
    ros-kinetic/genlisp
    ros-kinetic/gencpp
    ros-kinetic/rosbag_migration_rule
    ros-kinetic/catkin
    ros-kinetic/genmsg
    ros-kinetic/message_generation
    ros-kinetic/message_runtime
    ros-kinetic/geneus
    ros-kinetic/gennodejs
    ros-kinetic/rosconsole_bridge
    ros-kinetic/roscpp_core
    ros-kinetic/std_msgs
    ros-kinetic/ros
    ros-kinetic/common_msgs
"
DEPEND="
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
