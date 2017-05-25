# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/ecl_navigation-release/archive/release/kinetic/ecl_mobile_robot/0.60.3-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/ecl_license
    ros-kinetic/ecl_formatters
    ros-kinetic/ecl_linear_algebra
    ros-kinetic/ecl_math
    ros-kinetic/ecl_errors
    ros-kinetic/ecl_geometry
    ros-kinetic/ecl_build

"
DEPEND="${RDEPEND}
    ros-kinetic/ecl_license
    ros-kinetic/ecl_formatters
    ros-kinetic/ecl_linear_algebra
    ros-kinetic/ecl_math
    ros-kinetic/ecl_errors
    ros-kinetic/ecl_geometry
    ros-kinetic/ecl_build

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
