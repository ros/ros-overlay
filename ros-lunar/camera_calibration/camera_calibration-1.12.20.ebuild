# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit ros-cmake
DESCRIPTION="camera_calibration allows easy calibration of monocular or stereo
	 cameras u"
HOMEPAGE="http://www.ros.org/wiki/camera_calibration"
SRC_URI="https://github.com/ros-gbp/image_pipeline-release/archive/release/lunar/camera_calibration/1.12.20-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
	ros-lunar/cv_bridge
	ros-lunar/image_geometry
	ros-lunar/message_filters
	ros-lunar/rospy
	ros-lunar/sensor_msgs
	ros-lunar/std_srvs
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

