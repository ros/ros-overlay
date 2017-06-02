# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="The jsk_rqt_plugins package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/jsk_visualization-release/archive/release/kinetic/jsk_rqt_plugins/2.1.1-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-kinetic/cv_bridge
    ros-kinetic/image_view2
    ros-kinetic/message_runtime
    ros-kinetic/qt_gui_py_common
    ros-kinetic/resource_retriever
    ros-kinetic/rqt_gui
    ros-kinetic/rqt_gui_py
    ros-kinetic/rqt_image_view
    ros-kinetic/rqt_plot
    dev-python/urlgrabber
"
DEPEND="${RDEPEND}
    ros-kinetic/catkin
    ros-kinetic/message_generation
    ros-kinetic/mk
    ros-kinetic/rosbuild
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/kinetic"

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
    cd ../../work
    source /${ROS_PREFIX}/setup.bash
    export PYTHONPATH="/${ROS_PREFIX}/lib/python3.5/site-packages:${PYTHONPATH}"
    export PYTHONPATH="/${ROS_PREFIX}/lib64/python3.5/site-packages:${PYTHONPATH}"
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
