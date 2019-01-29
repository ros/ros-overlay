# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Extract a single ring of a Velodyne PointCloud2 and publish it as a LaserSc[...]"
HOMEPAGE="http://ros.org/wiki/velodyne_laserscan"
SRC_URI="https://github.com/ros-drivers-gbp/velodyne-release/archive/release/indigo/${PN}/1.5.2-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-indigo/dynamic_reconfigure
	ros-indigo/nodelet
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
	test? ( ros-indigo/roslaunch )
	test? ( ros-indigo/rostest )
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
