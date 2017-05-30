# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This includes a suite of programs demo'ing various aspects of the
     ecl_core."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/ecl_core-release/archive/release/indigo/ecl_core_apps/0.61.17-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/ecl_converters
    ros-indigo/ecl_sigslots
    ros-indigo/ecl_errors
    ros-indigo/ecl_containers
    ros-indigo/ecl_config
    ros-indigo/ecl_streams
    ros-indigo/ecl_linear_algebra
    ros-indigo/ecl_ipc
    ros-indigo/ecl_threads
    ros-indigo/ecl_devices
    ros-indigo/ecl_time_lite
    ros-indigo/ecl_geometry
    ros-indigo/ecl_formatters
    ros-indigo/ecl_build
    ros-indigo/ecl_exceptions
    ros-indigo/ecl_command_line
    ros-indigo/ecl_license
    ros-indigo/ecl_type_traits
"
DEPEND="${RDEPEND}
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/indigo"

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
