# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="The romeo_gazebo_plugin package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-aldebaran/romeo_virtual-release/archive/release/kinetic/romeo_gazebo_plugin/0.2.2-0.tar.gz"

LICENSE="Apache 2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/romeo_description
    ros-kinetic/ros_controllers
    ros-kinetic/gazebo_ros_control
    ros-kinetic/ros_control
    ros-kinetic/romeo_control
    ros-kinetic/gazebo_plugins
    ros-kinetic/gazebo_ros
"
DEPEND="
    ros-kinetic/gazebo_ros
    ros-kinetic/romeo_description
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
