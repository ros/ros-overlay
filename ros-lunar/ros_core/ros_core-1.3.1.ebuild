# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="A metapackage to aggregate the packages required to use publish / subscribe, services, launch files, and other core ROS concepts."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/metapackages-release/archive/release/lunar/ros_core/1.3.1-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/rosgraph_msgs
    ros-lunar/genlisp
    ros-lunar/genpy
    ros-lunar/genmsg
    ros-lunar/catkin
    ros-lunar/std_srvs
    ros-lunar/gencpp
    ros-lunar/rosconsole_bridge
    ros-lunar/std_msgs
    ros-lunar/message_runtime
    ros-lunar/roscpp_core
    ros-lunar/geneus
    ros-lunar/gennodejs
    ros-lunar/cmake_modules
    ros-lunar/roslisp
    ros-lunar/message_generation
    ros-lunar/rospack
    ros-lunar/ros
    ros-lunar/rosbag_migration_rule
    ros-lunar/ros_comm
    ros-lunar/common_msgs
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
    source /opt/ros/lunar/setup.bash
    catkin_make_isolated --install --install-space="/opt/ros/lunar" || die
}
