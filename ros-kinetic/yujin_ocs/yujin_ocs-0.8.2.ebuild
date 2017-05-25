# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/kinetic/yujin_ocs/0.8.2-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/yocs_controllers
    ros-kinetic/yocs_keyop
    ros-kinetic/yocs_safety_controller
    ros-kinetic/yocs_math_toolkit
    ros-kinetic/yocs_rapps
    ros-kinetic/yocs_cmd_vel_mux
    ros-kinetic/yocs_virtual_sensor
    ros-kinetic/yocs_joyop
    ros-kinetic/yocs_diff_drive_pose_controller
    ros-kinetic/yocs_velocity_smoother
    ros-kinetic/yocs_waypoints_navi

"
DEPEND="${RDEPEND}

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
