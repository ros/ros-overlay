# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="The pluginlib package provides tools for writing and dynamically loading plugins using the ROS build infrastructure.
    To work, these tools require plugin providers to register their plugins in the package.xml of their package."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/pluginlib-release/archive/release/kinetic/pluginlib/1.10.5-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/class_loader
    ros-kinetic/roslib
    ros-kinetic/rosconsole
    dev-libs/tinyxml
    dev-libs/boost
"
DEPEND="
    ros-kinetic/cmake_modules
    ros-kinetic/rosconsole
    ros-kinetic/roslib
    ros-kinetic/class_loader
    dev-libs/boost
    dev-libs/tinyxml
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
