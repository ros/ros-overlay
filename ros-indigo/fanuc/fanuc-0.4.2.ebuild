# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="ROS-Industrial support for Fanuc manipulators (metapackage)."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-industrial-release/fanuc-release/archive/release/indigo/fanuc/0.4.2-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-indigo/fanuc_driver
    ros-indigo/fanuc_lrmate200ic5h_moveit_config
    ros-indigo/fanuc_lrmate200ic5l_moveit_config
    ros-indigo/fanuc_lrmate200ic_moveit_config
    ros-indigo/fanuc_lrmate200ic_moveit_plugins
    ros-indigo/fanuc_lrmate200ic_support
    ros-indigo/fanuc_m10ia_moveit_config
    ros-indigo/fanuc_m10ia_moveit_plugins
    ros-indigo/fanuc_m10ia_support
    ros-indigo/fanuc_m16ib20_moveit_config
    ros-indigo/fanuc_m16ib_moveit_plugins
    ros-indigo/fanuc_m16ib_support
    ros-indigo/fanuc_m20ia10l_moveit_config
    ros-indigo/fanuc_m20ia_moveit_config
    ros-indigo/fanuc_m20ia_moveit_plugins
    ros-indigo/fanuc_m20ia_support
    ros-indigo/fanuc_m430ia2f_moveit_config
    ros-indigo/fanuc_m430ia2p_moveit_config
    ros-indigo/fanuc_m430ia_moveit_plugins
    ros-indigo/fanuc_m430ia_support
    ros-indigo/fanuc_resources
"
DEPEND="${RDEPEND}
    dev-python/catkin
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
    export PYTHONPATH="/${ROS_PREFIX}/lib/python3.5/site-packages:${PYTHONPATH}"
    export PYTHONPATH="/${ROS_PREFIX}/lib64/python3.5/site-packages:${PYTHONPATH}"
    export PYTHONPATH="${D}/${ROS_PREFIX}/lib/python3.5/site-packages:${PYTHONPATH}"
    export PYTHONPATH="${D}/${ROS_PREFIX}/lib64/python3.5/site-packages:${PYTHONPATH}"
    if [[ ! -d ${D}/${ROS_PREFIX}/lib64/python3.5/site-packages ]]; then
        mkdir -p ${D}/${ROS_PREFIX}/lib64/python3.5/site-packages
    fi

    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
