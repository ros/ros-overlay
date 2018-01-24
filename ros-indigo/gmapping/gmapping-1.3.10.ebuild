# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package contains a ROS wrapper for OpenSlam\'s Gmapping. \
  The gmapp[...]"
HOMEPAGE="http://ros.org/wiki/gmapping"
SRC_URI="https://github.com/ros-gbp/slam_${PN}-release/archive/release/indigo/${PN}/1.3.10-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="CC-BY-SA-3.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/nav_msgs
	ros-indigo/nodelet
	ros-indigo/openslam_gmapping
	ros-indigo/roscpp
	ros-indigo/tf
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/rostest
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
