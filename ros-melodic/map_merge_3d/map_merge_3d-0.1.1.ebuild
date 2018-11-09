# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Merging multiple 3D maps, represented as pointclouds,\
  without knowledge [...]"
HOMEPAGE="http://wiki.ros.org/map_merge_3d"
SRC_URI="https://github.com/hrnr/map-merge-release/archive/release/melodic/${PN}/0.1.1-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/pcl_ros
	ros-melodic/roscpp
	ros-melodic/tf2_eigen
	ros-melodic/tf2_ros
	test? ( ros-melodic/roslaunch )
	test? ( ros-melodic/rosunit )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
