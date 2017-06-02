# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/rqt_common_plugins-release/archive/release/indigo/rqt_common_plugins/0.4.8-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-indigo/rqt_action
    ros-indigo/rqt_bag
    ros-indigo/rqt_bag_plugins
    ros-indigo/rqt_console
    ros-indigo/rqt_dep
    ros-indigo/rqt_graph
    ros-indigo/rqt_image_view
    ros-indigo/rqt_launch
    ros-indigo/rqt_logger_level
    ros-indigo/rqt_msg
    ros-indigo/rqt_plot
    ros-indigo/rqt_publisher
    ros-indigo/rqt_py_common
    ros-indigo/rqt_py_console
    ros-indigo/rqt_reconfigure
    ros-indigo/rqt_service_caller
    ros-indigo/rqt_shell
    ros-indigo/rqt_srv
    ros-indigo/rqt_top
    ros-indigo/rqt_topic
    ros-indigo/rqt_web
"
DEPEND="${RDEPEND}
    ros-indigo/catkin
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/indigo"

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
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
