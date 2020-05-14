# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="NovAtel Oem7 ROS Driver"
HOMEPAGE="http://www.novatel.com"
SRC_URI="https://github.com/novatel-gbp/${PN}-release/archive/release/melodic/${PN}/1.1.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/gps_common
	ros-melodic/nodelet
	ros-melodic/novatel_oem7_msgs
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	ros-melodic/tf
	test? ( ros-melodic/rostest )
	dev-libs/boost[python]
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
