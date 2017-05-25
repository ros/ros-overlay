# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/rqt_wrapper-release/archive/release/kinetic/rqt_wrapper/0.1.4-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/python_qt_binding
    ros-kinetic/rqt_reconfigure
    ros-kinetic/rqt_gui
    ros-kinetic/rosgraph
    ros-kinetic/qt_gui_py_common
    ros-kinetic/rqt_plot
    ros-kinetic/rocon_python_utils
    ros-kinetic/rqt_gui_py
    ros-kinetic/rocon_console
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
