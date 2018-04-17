# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="rqt_bag provides a GUI plugin for displaying and replaying ROS bag files."
HOMEPAGE="http://wiki.ros.org/rqt_bag"
SRC_URI="https://github.com/ros-gbp/rqt_bag-release/archive/release/lunar/${PN}/0.4.12-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/geometry_msgs
	ros-lunar/rosbag
	ros-lunar/roslib
	ros-lunar/rospy
	ros-lunar/rqt_bag
	ros-lunar/rqt_gui
	ros-lunar/rqt_gui_py
	ros-lunar/rqt_plot
	ros-lunar/sensor_msgs
	ros-lunar/std_msgs
	dev-python/pycairo
	dev-python/pillow
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
