# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/rqt_pose_view-release/archive/release/kinetic/rqt_pose_view/0.5.7-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/python_qt_binding
    ros-kinetic/rqt_gui_py
    ros-kinetic/gl_dependency
    ros-kinetic/python-rospkg
    ros-kinetic/geometry_msgs
    ros-kinetic/rostopic
    ros-kinetic/tf
    ros-kinetic/rospy
    ros-kinetic/python-opengl
    ros-kinetic/rqt_gui
    ros-kinetic/rqt_py_common

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
