# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/rqt_robot_plugins-release/archive/release/kinetic/rqt_robot_plugins/0.5.7-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/rqt_robot_steering
    ros-kinetic/rqt_runtime_monitor
    ros-kinetic/rqt_tf_tree
    ros-kinetic/rqt_moveit
    ros-kinetic/rqt_robot_dashboard
    ros-kinetic/rqt_nav_view
    ros-kinetic/rqt_pose_view
    ros-kinetic/rqt_rviz
    ros-kinetic/rqt_robot_monitor

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
