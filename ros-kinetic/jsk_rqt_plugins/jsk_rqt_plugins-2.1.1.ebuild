# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/jsk_visualization-release/archive/release/kinetic/jsk_rqt_plugins/2.1.1-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/python-urlgrabber
    ros-kinetic/rqt_gui
    ros-kinetic/message_runtime
    ros-kinetic/rqt_image_view
    ros-kinetic/resource_retriever
    ros-kinetic/qt_gui_py_common
    ros-kinetic/rqt_plot
    ros-kinetic/rqt_gui_py
    ros-kinetic/cv_bridge
    ros-kinetic/image_view2

"
DEPEND="${RDEPEND}
    ros-kinetic/rosbuild
    ros-kinetic/message_generation
    ros-kinetic/image_view2
    ros-kinetic/mk

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
