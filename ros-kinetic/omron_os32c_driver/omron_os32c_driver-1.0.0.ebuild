# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Interface driver for Omron OS32C Lidar via Ethernet/IP \(Industrial Protocol\)"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-drivers-gbp/omron-release/archive/release/kinetic/${PN}/1.0.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/diagnostic_updater
	ros-kinetic/odva_ethernetip
	ros-kinetic/rosconsole_bridge
	ros-kinetic/roscpp
	ros-kinetic/sensor_msgs
	test? ( ros-kinetic/roslaunch )
	test? ( ros-kinetic/rosunit )
	dev-libs/boost[python]
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
