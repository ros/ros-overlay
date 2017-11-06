# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Contains a new implementation of 3D NDT registration. \
	Used to find th[...]"
HOMEPAGE="http://ros.org/wiki/ndt_registration"
SRC_URI="https://github.com/tstoyanov/perception_oru-release/archive/release/indigo/ndt_registration/1.0.30-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/ndt_map
	ros-indigo/pcl_ros
	ros-indigo/tf
	ros-indigo/tf_conversions
	sci-libs/pcl
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
