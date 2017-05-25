# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/jsk_common-release/archive/release/kinetic/jsk_data/2.2.2-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/pr2_description
    ros-kinetic/rosbag
    ros-kinetic/xacro
    ros-kinetic/rviz
    ros-kinetic/python-gdown-pip
    ros-kinetic/python-yaml
    ros-kinetic/depth_image_proc
    ros-kinetic/message_runtime
    ros-kinetic/pr2_machine
    ros-kinetic/image_transport
    ros-kinetic/openni_launch
    ros-kinetic/rqt_bag
    ros-kinetic/python-click
    ros-kinetic/jsk_topic_tools
    ros-kinetic/nodelet
    ros-kinetic/paramiko

"
DEPEND="${RDEPEND}
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/message_generation

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
