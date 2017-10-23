# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package contains a ROS wrapper for OpenSlam\'s Gmapping. \
  The gmapp[...]"
HOMEPAGE="http://ros.org/wiki/gmapping"
SRC_URI="https://github.com/ros-gbp/slam_gmapping-release/archive/release/lunar/gmapping/1.3.9-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="CC-BY-SA-3.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/nav_msgs
	ros-lunar/nodelet
	ros-lunar/openslam_gmapping
	ros-lunar/roscpp
	ros-lunar/tf
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/rostest
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
