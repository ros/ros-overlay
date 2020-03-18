# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package contains a ROS wrapper for OpenSlam\'s Gmapping. \
  The gmapp[...]"
HOMEPAGE="http://ros.org/wiki/gmapping"
SRC_URI="https://github.com/ros-gbp/slam_${PN}-release/archive/release/melodic/${PN}/1.4.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="( BSD Apache-2.0 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/nav_msgs
	ros-melodic/nodelet
	ros-melodic/openslam_gmapping
	ros-melodic/roscpp
	ros-melodic/tf
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/rostest
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
