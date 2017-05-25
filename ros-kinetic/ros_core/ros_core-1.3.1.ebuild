# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/metapackages-release/archive/release/kinetic/ros_core/1.3.1-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/rosgraph_msgs
    ros-kinetic/genlisp
    ros-kinetic/genpy
    ros-kinetic/genmsg
    ros-kinetic/catkin
    ros-kinetic/std_srvs
    ros-kinetic/gencpp
    ros-kinetic/rosconsole_bridge
    ros-kinetic/std_msgs
    ros-kinetic/message_runtime
    ros-kinetic/roscpp_core
    ros-kinetic/geneus
    ros-kinetic/gennodejs
    ros-kinetic/cmake_modules
    ros-kinetic/roslisp
    ros-kinetic/message_generation
    ros-kinetic/rospack
    ros-kinetic/ros
    ros-kinetic/rosbag_migration_rule
    ros-kinetic/ros_comm
    ros-kinetic/common_msgs

"
DEPEND="${RDEPEND}

"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo

src_unpack() {
    default
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
