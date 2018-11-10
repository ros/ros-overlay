# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="C++ library for SE\(2/3\) pose and 2D/3D point\
	composition operations [...]"
HOMEPAGE="http://wiki.ros.org/pose_cov_ops"
SRC_URI="https://github.com/mrpt-ros-pkg-release/${PN}-release/archive/release/melodic/${PN}/0.2.1-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/geometry_msgs
	ros-melodic/mrpt1
	ros-melodic/mrpt_bridge
	ros-melodic/roscpp
	test? ( ros-melodic/rosunit )
	test? ( dev-cpp/gtest )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
