# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="orogen offers a specification interface for components developped in the
    Oro"
HOMEPAGE="http://rock-robotics.org/documentation/orogen"
SRC_URI="https://github.com/orocos-gbp/orogen-release/archive/release/indigo/orogen/2.8.0-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="GPL v2 or later"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/catkin
    ros-indigo/utilrb
    ros-indigo/typelib
    ros-indigo/rtt
    ros-indigo/metaruby
    ros-indigo/rtt_typelib
    dev-lang/ruby
    dev-ruby/rake
    dev-ruby/nokogiri
"
DEPEND="${RDEPEND}
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
