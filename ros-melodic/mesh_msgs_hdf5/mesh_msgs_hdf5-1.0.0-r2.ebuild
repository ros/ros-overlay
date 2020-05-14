# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Read and write mesh_msgs to and from hdf5"
HOMEPAGE="http://wiki.ros.org/ros_mesh_tools/mesh_msgs_hdf5"
SRC_URI="https://github.com/uos-gbp/mesh-tools/archive/release/melodic/${PN}/1.0.0-2.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/hdf5_map_io
	ros-melodic/label_manager
	ros-melodic/mesh_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
