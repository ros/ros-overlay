# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/lunar/gazebo_ros/2.7.2-0.tar.gz"

LICENSE="Apache 2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/rosgraph_msgs
    ros-lunar/dynamic_reconfigure
    ros-lunar/std_srvs
    ros-lunar/roscpp
    ros-lunar/std_msgs
    ros-lunar/roslib
    ros-lunar/gazebo_msgs
    ros-lunar/geometry_msgs
    ros-lunar/tf
    ros-lunar/gazebo_dev
    tinyxml
"
DEPEND="
    ros-lunar/rosgraph_msgs
    ros-lunar/dynamic_reconfigure
    ros-lunar/std_srvs
    ros-lunar/roscpp
    ros-lunar/std_msgs
    ros-lunar/roslib
    ros-lunar/gazebo_msgs
    ros-lunar/cmake_modules
    ros-lunar/geometry_msgs
    ros-lunar/tf
    ros-lunar/gazebo_dev
    tinyxml
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
