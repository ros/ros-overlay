# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="A metapackage to aggregate the packages required to use publish / subscribe, services, launch files, and other core ROS concepts."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/metapackages-release/archive/release/lunar/ros_core/1.3.1-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/message_generation
    ros-lunar/genpy
    ros-lunar/gennodejs
    ros-lunar/rosgraph_msgs
    ros-lunar/roslisp
    ros-lunar/geneus
    ros-lunar/genmsg
    ros-lunar/rosbag_migration_rule
    ros-lunar/std_msgs
    ros-lunar/genlisp
    ros-lunar/message_runtime
    ros-lunar/ros_comm
    ros-lunar/std_srvs
    ros-lunar/catkin
    ros-lunar/gencpp
    ros-lunar/rosconsole_bridge
    ros-lunar/common_msgs
    ros-lunar/roscpp_core
    ros-lunar/ros
    ros-lunar/rospack
    ros-lunar/cmake_modules
"
DEPEND="${RDEPEND}
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
