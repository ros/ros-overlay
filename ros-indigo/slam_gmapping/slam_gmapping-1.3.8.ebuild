# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="slam_gmapping contains a wrapper around gmapping which provides SLAM capabilitie"
HOMEPAGE="http://ros.org/wiki/slam_gmapping"
SRC_URI="https://github.com/ros-gbp/slam_gmapping-release/archive/release/indigo/slam_gmapping/1.3.8-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="CC-BY-SA-3.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/gmapping
	ros-indigo/openslam_gmapping
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

