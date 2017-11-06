# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Localizing jockey from LaserScan\
\
\	  Implement a localizing jockey from [...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/lama-imr/lama_laser-release/archive/release/indigo/lj_laser/0.1.3-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/crossing_detector
	ros-indigo/geometry_msgs
	ros-indigo/lama_common
	ros-indigo/lama_interfaces
	ros-indigo/lama_jockeys
	ros-indigo/lama_msgs
	ros-indigo/polygon_matcher
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
