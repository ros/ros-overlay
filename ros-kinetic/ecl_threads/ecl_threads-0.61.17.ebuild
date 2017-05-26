# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This package provides the c++ extensions for a variety of threaded 
     programming tools. These are usually different on different 
     platforms, so the architecture for a cross-platform framework
     is also implemented."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/ecl_core-release/archive/release/kinetic/ecl_threads/0.61.17-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/ecl_exceptions
    ros-kinetic/ecl_errors
    ros-kinetic/ecl_config
    ros-kinetic/ecl_build
    ros-kinetic/ecl_license
    ros-kinetic/ecl_concepts
    ros-kinetic/ecl_time
    ros-kinetic/ecl_utilities
"
DEPEND="
    ros-kinetic/ecl_exceptions
    ros-kinetic/ecl_errors
    ros-kinetic/ecl_config
    ros-kinetic/ecl_build
    ros-kinetic/ecl_license
    ros-kinetic/ecl_concepts
    ros-kinetic/ecl_time
    ros-kinetic/ecl_utilities
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
