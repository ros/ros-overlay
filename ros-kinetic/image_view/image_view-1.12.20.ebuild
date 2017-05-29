# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="A simple viewer for ROS image topics. Includes a specialized viewer
  for stereo"
HOMEPAGE="http://www.ros.org/wiki/image_view"
SRC_URI="https://github.com/ros-gbp/image_pipeline-release/archive/release/kinetic/image_view/1.12.20-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/rosconsole
    ros-kinetic/cv_bridge
    ros-kinetic/std_srvs
    ros-kinetic/message_filters
    ros-kinetic/camera_calibration_parsers
    ros-kinetic/nodelet
    ros-kinetic/roscpp
    ros-kinetic/image_transport
    ros-kinetic/dynamic_reconfigure
    x11-libs/gtk+
"
DEPEND="${RDEPEND}
    ros-kinetic/message_generation
    ros-kinetic/sensor_msgs
    ros-kinetic/stereo_msgs
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
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
