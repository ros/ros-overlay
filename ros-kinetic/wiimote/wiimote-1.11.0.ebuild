# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="The wiimote package allows ROS nodes to communicate with a Nintendo Wiimote
    and its related peripherals, including the Nunchuk, Motion Plus, and
    (experimentally) the Classic. The package implements a ROS node that uses
    Bluetooth to communicate with the Wiimote device, obtaining accelerometer
    and gyro data, the state of LEDs, the IR camera, rumble (vibrator),
    buttons, joystick, and battery state. The node additionally enables ROS
    nodes to control the Wiimote's LEDs and vibration for feedback to the human
    Wiimote operator. LEDs and vibration may be switched on and off, or made to
    operate according to a timed pattern."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/joystick_drivers-release/archive/release/kinetic/wiimote/1.11.0-0.tar.gz"

LICENSE="GPL"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/genmsg
    ros-kinetic/std_srvs
    ros-kinetic/roscpp
    ros-kinetic/std_msgs
    ros-kinetic/roslib
    ros-kinetic/geometry_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/rospy
    app-misc/cwiid
    dev-python/numpy
    app-misc/cwiid
"
DEPEND="${RDEPEND}
    ros-kinetic/roslint
    app-misc/cwiid
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
    source /opt/ros/kinetic/setup.bash
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}"
    rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
    rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
}
