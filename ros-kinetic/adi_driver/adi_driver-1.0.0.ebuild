# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The adi_driver package"
HOMEPAGE="http://wiki.ros.org/adi_driver"
SRC_URI="https://github.com/tork-a/${PN}-release/archive/release/kinetic/${PN}/1.0.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/imu_filter_madgwick
	ros-kinetic/imu_tools
	ros-kinetic/roscpp
	ros-kinetic/rqt_plot
	ros-kinetic/rviz
	ros-kinetic/sensor_msgs
	ros-kinetic/xacro
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/roslint
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
