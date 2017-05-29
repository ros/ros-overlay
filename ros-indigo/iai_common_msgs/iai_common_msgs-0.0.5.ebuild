# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Message definitions created and used by the Institute for Artificial Intelligenc"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/code-iai-release/iai_common_msgs-release/archive/release/indigo/iai_common_msgs/0.0.5-3.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/json_prolog_msgs
    ros-indigo/person_msgs
    ros-indigo/iai_wsg_50_msgs
    ros-indigo/sherlock_sim_msgs
    ros-indigo/grasp_stability_msgs
    ros-indigo/iai_kinematics_msgs
    ros-indigo/iai_urdf_msgs
    ros-indigo/data_vis_msgs
    ros-indigo/dna_extraction_msgs
    ros-indigo/iai_content_msgs
    ros-indigo/iai_robosherlock_actions
    ros-indigo/iai_control_msgs
    ros-indigo/scanning_table_msgs
    ros-indigo/saphari_msgs
    ros-indigo/planning_msgs
    ros-indigo/mln_robosherlock_msgs
    ros-indigo/designator_integration_msgs
"
DEPEND="${RDEPEND}
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/indigo"

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
