# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/rqt_common_plugins-release/archive/release/kinetic/rqt_common_plugins/0.4.8-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/rqt_launch
    ros-kinetic/rqt_top
    ros-kinetic/rqt_dep
    ros-kinetic/rqt_console
    ros-kinetic/rqt_action
    ros-kinetic/rqt_plot
    ros-kinetic/rqt_bag_plugins
    ros-kinetic/rqt_py_console
    ros-kinetic/rqt_bag
    ros-kinetic/rqt_msg
    ros-kinetic/rqt_srv
    ros-kinetic/rqt_graph
    ros-kinetic/rqt_publisher
    ros-kinetic/rqt_image_view
    ros-kinetic/rqt_py_common
    ros-kinetic/rqt_reconfigure
    ros-kinetic/rqt_shell
    ros-kinetic/rqt_service_caller
    ros-kinetic/rqt_logger_level
    ros-kinetic/rqt_topic
    ros-kinetic/rqt_web
"
DEPEND="${RDEPEND}
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/kinetic"

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
    if [[ -e ${D}/${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
