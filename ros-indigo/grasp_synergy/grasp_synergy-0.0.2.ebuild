# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Grasp Synergies aka eigengrasps: compute, store, and command lowdimensional g"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/felixduvallet/grasp-synergy-release/archive/release/indigo/grasp_synergy/0.0.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/rosbag
	ros-indigo/rospy
	ros-indigo/rostest
	ros-indigo/rqt_ez_publisher
	dev-python/numpy
	sci-libs/scikits_learn
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

