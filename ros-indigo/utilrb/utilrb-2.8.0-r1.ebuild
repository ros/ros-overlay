# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Ruby toolkit: This library is a collection of useful Ruby classes"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/orocos-gbp/utilrb-release/archive/release/indigo/utilrb/2.8.0-1.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="CeCILL-B (BSD-like)"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/catkin
    sys-libs/readline
    dev-ruby/hoe
    dev-lang/ruby
    dev-ruby/facets
"
DEPEND="${RDEPEND}
    sys-libs/readline
    dev-ruby/rake-compiler
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
