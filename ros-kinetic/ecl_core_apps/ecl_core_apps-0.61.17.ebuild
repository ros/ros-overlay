# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/ecl_core-release/archive/release/kinetic/ecl_core_apps/0.61.17-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/ecl_devices
    ros-kinetic/ecl_containers
    ros-kinetic/ecl_type_traits
    ros-kinetic/ecl_command_line
    ros-kinetic/ecl_formatters
    ros-kinetic/ecl_threads
    ros-kinetic/ecl_time_lite
    ros-kinetic/ecl_linear_algebra
    ros-kinetic/ecl_streams
    ros-kinetic/ecl_errors
    ros-kinetic/ecl_converters
    ros-kinetic/ecl_ipc
    ros-kinetic/ecl_config
    ros-kinetic/ecl_build
    ros-kinetic/ecl_sigslots
    ros-kinetic/ecl_license
    ros-kinetic/ecl_exceptions
    ros-kinetic/ecl_geometry

"
DEPEND="${RDEPEND}
    ros-kinetic/ecl_devices
    ros-kinetic/ecl_containers
    ros-kinetic/ecl_type_traits
    ros-kinetic/ecl_command_line
    ros-kinetic/ecl_formatters
    ros-kinetic/ecl_threads
    ros-kinetic/ecl_time_lite
    ros-kinetic/ecl_linear_algebra
    ros-kinetic/ecl_streams
    ros-kinetic/ecl_errors
    ros-kinetic/ecl_converters
    ros-kinetic/ecl_ipc
    ros-kinetic/ecl_config
    ros-kinetic/ecl_build
    ros-kinetic/ecl_sigslots
    ros-kinetic/ecl_license
    ros-kinetic/ecl_exceptions
    ros-kinetic/ecl_geometry

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
