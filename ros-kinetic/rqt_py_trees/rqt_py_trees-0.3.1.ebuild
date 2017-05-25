# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/stonier/rqt_py_trees-release/archive/release/kinetic/rqt_py_trees/0.3.1-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/python-termcolor
    ros-kinetic/rqt_bag
    ros-kinetic/rqt_gui
    ros-kinetic/python-pygraphviz
    ros-kinetic/py_trees_msgs
    ros-kinetic/python-rospkg
    ros-kinetic/rqt_graph
    ros-kinetic/rospy
    ros-kinetic/qt_dotgraph
    ros-kinetic/py_trees
    ros-kinetic/geometry_msgs
    ros-kinetic/rqt_gui_py
    ros-kinetic/unique_id

"
DEPEND="${RDEPEND}
    ros-kinetic/rqt_bag
    ros-kinetic/py_trees_msgs
    ros-kinetic/py_trees

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
