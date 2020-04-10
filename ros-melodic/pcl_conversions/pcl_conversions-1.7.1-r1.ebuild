# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Provides conversions from PCL data types and ROS message types"
HOMEPAGE="http://wiki.ros.org/pcl_conversions"
SRC_URI="https://github.com/ros-gbp/perception_pcl-release/archive/release/melodic/${PN}/1.7.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/pcl_msgs
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	test? ( ros-melodic/pcl_msgs )
	test? ( ros-melodic/roscpp )
	test? ( ros-melodic/sensor_msgs )
	test? ( ros-melodic/std_msgs )
	dev-cpp/eigen
	sci-libs/pcl
	test? ( dev-cpp/eigen )
	test? ( sci-libs/pcl )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
