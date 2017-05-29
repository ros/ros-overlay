# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="ROS-Industrial support for ABB manipulators (metapackage)."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-industrial-release/abb-release/archive/release/kinetic/abb/1.3.0-1.tar.gz"

LICENSE="||( BSD Apache 2.0 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/abb_resources
    ros-kinetic/abb_irb6600_support
    ros-kinetic/abb_irb2400_moveit_config
    ros-kinetic/abb_driver
    ros-kinetic/abb_irb2400_moveit_plugins
    ros-kinetic/abb_irb2400_support
    ros-kinetic/abb_irb6640_support
    ros-kinetic/abb_irb6640_moveit_config
    ros-kinetic/abb_irb5400_support
    ros-kinetic/abb_irb4400_support
"
DEPEND="${RDEPEND}
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/kinetic"

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
    source /${ROS_PREFIX}/setup.bash
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
