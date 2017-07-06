# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Ecto bindings for common PCL functionality.'"
HOMEPAGE="http://plasmodic.github.io/ecto_pcl"
SRC_URI="https://github.com/ros-gbp/ecto_pcl-release/archive/release/indigo/ecto_pcl/0.4.3-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/ecto
	ros-indigo/ecto_ros
	ros-indigo/pcl_conversions
	ros-indigo/sensor_msgs
	dev-libs/boost
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

