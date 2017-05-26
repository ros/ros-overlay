# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="hector_object_tracker is the core package of hector_worldmodel. It listens to percept message from
     detectors (e.g. heat signatures of persons or recognitions of other objects of interest in the
     scene) and fuses all information to a single worldmodel state. Objects will be tracked over time
     and their states can be influenced by a couple of services.

     The percept to object association problem is solved either automatically based on the Mahalanobis
     distance, or a unique object_id can be given in the percept message.

     If a hector_nav_msgs/GetDistanceToObstacle service is available, the object_tracker can optionally
     deduce the depth of objects in the scene by projection to the nearest obstacle (wall)."
HOMEPAGE="http://ros.org/wiki/hector_object_tracker"
SRC_URI="https://github.com/tu-darmstadt-ros-pkg-gbp/hector_worldmodel-release/archive/release/kinetic/hector_object_tracker/0.3.4-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/hector_worldmodel_msgs
    ros-kinetic/hector_marker_drawing
    ros-kinetic/roscpp
    ros-kinetic/hector_nav_msgs
    ros-kinetic/tf
    ros-kinetic/image_geometry
"
DEPEND="
    ros-kinetic/hector_worldmodel_msgs
    ros-kinetic/hector_marker_drawing
    ros-kinetic/roscpp
    ros-kinetic/hector_nav_msgs
    ros-kinetic/tf
    ros-kinetic/image_geometry
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
