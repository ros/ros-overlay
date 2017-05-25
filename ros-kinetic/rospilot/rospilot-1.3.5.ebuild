# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/rospilot/rospilot-release/archive/release/kinetic/rospilot/1.3.5-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/python-mapnik
    ros-kinetic/python-cherrypy
    ros-kinetic/curl
    ros-kinetic/python-tilestache
    ros-kinetic/rospy
    ros-kinetic/vision_opencv
    ros-kinetic/python-colorama
    ros-kinetic/osm2pgsql
    ros-kinetic/mavlink
    ros-kinetic/rosbridge_suite
    ros-kinetic/dnsmasq
    ros-kinetic/gdal-bin
    ros-kinetic/unzip
    ros-kinetic/postgresql-9.x-postgis
    ros-kinetic/sensor_msgs
    ros-kinetic/message_runtime
    ros-kinetic/std_msgs
    ros-kinetic/mapnik-utils
    ros-kinetic/rosbash
    ros-kinetic/roslaunch
    ros-kinetic/std_srvs
    ros-kinetic/python-psutil
    ros-kinetic/hostapd
    ros-kinetic/python-serial
    ros-kinetic/geometry_msgs
    ros-kinetic/libnl-3

"
DEPEND="${RDEPEND}
    ros-kinetic/std_srvs
    ros-kinetic/roscpp
    ros-kinetic/sensor_msgs
    ros-kinetic/std_msgs
    ros-kinetic/libturbojpeg
    ros-kinetic/roslint
    ros-kinetic/opencv3
    ros-kinetic/geometry_msgs
    ros-kinetic/message_generation
    ros-kinetic/libnl-3-dev
    ros-kinetic/libgphoto-dev
    ros-kinetic/libmicrohttpd
    ros-kinetic/ffmpeg

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
