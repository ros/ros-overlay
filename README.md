ros-overlay
===========

This overlay contains ebuilds for the Robot Operating System (ROS).

Install This Overlay
--------------------

Layman makes the install rather simple, thankfully.

```
 # layman -f -o https://raw.githubusercontent.com/ros/ros-overlay/master/overlay.xml -a ros-overlay
```

ROS Installation
----------------


1. Emerge rosdep. This is a basic prerequisite.

```
 $ sudo emerge rosdep
 $ sudo rosdep init
```
&nbsp;
2. Now we refresh rosdep (this should not be done as the root user, hence the '$' proceeding the command).

```
 $ rosdep update
```
&nbsp;
3. Now add these three lines to the end of your `/etc/portage/package.use` file.

```
# required by ROS
sys-libs/zlib minizip
dev-libs/boost python
```
&nbsp;
4. As a precaution, it is advised that you perform a full update to keep the rest of your system from breaking.

```
 # emerge --sync
 # emerge -uDNvaj @world
 # revdep-rebuild
```
&nbsp;
5. Now, we install the tools needed for the install.

` $ sudo emerge rosinstall_generator wstool rosinstall catkin_pkg`

&nbsp;
6. Now we begin building the system.

```
 $ mkdir ~/catkin_ws
 $ rosinstall_generator desktop_full --rosdistro jade --deps --wet-only > jade-desktop_full-wet.rosinstall
 $ cd ~/catkin_ws && wstool init -j8 src jade-desktop_full-wet.rosinstall
```

Should wstool fail, run the following command to resume the install (sometimes the amount of jobs causes problems).

```
 $ wstool update -j 4 -t src
```
&nbsp;
7. Next install the required dependences using rosdep.

```
 $ rosdep install --from-paths src --ignore-src --rosdistro jade -y
```
&nbsp;
8. Build the packages! If you are running on a 32-bit system, change "lib64" to "lib" in the specified PYTHONPATH.
```
 $ sudo PYTHONPATH="/opt/ros/jade/lib64/python2.7/site-packages/" ./src/catkin/bin/catkin_make_isolated --install --install-space /opt/ros/jade -DSETUPTOOLS_DEB_LAYOUT=OFF
```
