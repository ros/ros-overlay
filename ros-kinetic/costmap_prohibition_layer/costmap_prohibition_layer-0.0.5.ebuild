# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="ROS-Package that implements a costmap layer to add prohibited areas to the costmap-2D by a user configuration."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/rst-tu-dortmund/costmap_prohibition_layer-release/archive/release/kinetic/costmap_prohibition_layer/0.0.5-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/roscpp
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/costmap_2d
"
DEPEND="
    ros-kinetic/roscpp
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/costmap_2d
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
    echo ""
}

pkg_postinst() {
    cd ../work
    source /opt/ros/kinetic/setup.bash
    catkin_make_isolated --install --install-space="/opt/ros/kinetic" || die
}
