# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Interface driver for Omron OS32C Lidar via Ethernet/IP \(Industrial Protocol\)"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-drivers-gbp/omron-release/archive/release/melodic/${PN}/1.1.0-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/diagnostic_updater
	ros-melodic/odva_ethernetip
	ros-melodic/rosconsole_bridge
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	test? ( ros-melodic/roslaunch )
	test? ( ros-melodic/rosunit )
	dev-libs/boost[python]
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
