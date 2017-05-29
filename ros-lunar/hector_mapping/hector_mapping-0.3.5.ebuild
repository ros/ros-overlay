# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="hector_mapping is a SLAM approach that can be used without odometry as well as on platforms that exhibit roll/pitch motion (of the sensor, the platform or both).
	It leverages the high update rate of modern LIDAR systems like the Hokuyo UTM-30LX and provides 2D pose estimates at scan rate of the sensors (40Hz for the UTM-30LX).
	While the system does not provide explicit loop closing ability, it is sufficiently accurate for many real world scenarios. The system has successfully been used on
	Unmanned Ground Robots, Unmanned Surface Vehicles, Handheld Mapping Devices and logged data from quadrotor UAVs."
HOMEPAGE="http://ros.org/wiki/hector_mapping"
SRC_URI="https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/kinetic/hector_mapping/0.3.5-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
	ros-lunar/message_runtime
	ros-lunar/visualization_msgs
	ros-lunar/laser_geometry
	ros-lunar/nav_msgs
	ros-lunar/roscpp
	ros-lunar/message_filters
	ros-lunar/tf_conversions
	ros-lunar/tf
	dev-libs/boost
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-lunar/message_generation
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/lunar"

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
	source /opt/ros/lunar/setup.bash
	catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
	rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
	rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
}
