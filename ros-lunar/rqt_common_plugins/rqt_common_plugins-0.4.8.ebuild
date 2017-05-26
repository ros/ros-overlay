# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/rqt_common_plugins-release/archive/release/lunar/rqt_common_plugins/0.4.8-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/rqt_topic
    ros-lunar/rqt_top
    ros-lunar/rqt_plot
    ros-lunar/rqt_web
    ros-lunar/rqt_graph
    ros-lunar/rqt_reconfigure
    ros-lunar/rqt_srv
    ros-lunar/rqt_bag_plugins
    ros-lunar/rqt_image_view
    ros-lunar/rqt_action
    ros-lunar/rqt_console
    ros-lunar/rqt_publisher
    ros-lunar/rqt_bag
    ros-lunar/rqt_launch
    ros-lunar/rqt_py_console
    ros-lunar/rqt_service_caller
    ros-lunar/rqt_logger_level
    ros-lunar/rqt_py_common
    ros-lunar/rqt_dep
    ros-lunar/rqt_msg
    ros-lunar/rqt_shell
"
DEPEND="${RDEPEND}
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo

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
    source /opt/ros/lunar/setup.bash
    catkin_make_isolated --install --install-space="${D}" || die
}

pkg_postinst() {
    cd ${D}
    cp -R lib* /opt/ros/lunar
    cp -R share /opt/ros/lunar
    cp -R bin /opt/ros/lunar
    cp -R include /opt/ros/lunar
}
