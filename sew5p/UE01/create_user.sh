#!/bin/bash
set -e
mkdir /home/klassen
getent passwd lehrer > /dev/null && echo 'User lehrer already exists. Aborting.' && exit 1 || true
groupadd lehrer
useradd -d /home/lehrer -c lehrer -m -g lehrer -s /bin/bash lehrer
echo lehrer:lehrer | chpasswd
getent passwd seminar > /dev/null && echo 'User seminar already exists. Aborting.' && exit 1 || true
groupadd seminar
useradd -d /home/seminar -c seminar -m -g seminar -s /bin/bash seminar
echo seminar:seminar | chpasswd
getent passwd k1am > /dev/null && echo 'User 1am already exists. Aborting.' && exit 1 || true
groupadd 1am
useradd -d /home/klassen/1am -c k1am -m -g 1am -G cdrom,plugdev,sambashare -s /bin/bash k1am
echo 1am:1am-165.frh& | chpasswd
getent passwd k1bm > /dev/null && echo 'User 1bm already exists. Aborting.' && exit 1 || true
groupadd 1bm
useradd -d /home/klassen/1bm -c k1bm -m -g 1bm -G cdrom,plugdev,sambashare -s /bin/bash k1bm
echo 1bm:1bm1365(dre. | chpasswd
getent passwd k1cm > /dev/null && echo 'User 1cm already exists. Aborting.' && exit 1 || true
groupadd 1cm
useradd -d /home/klassen/1cm -c k1cm -m -g 1cm -G cdrom,plugdev,sambashare -s /bin/bash k1cm
echo 1cm:1cm&379#grm) | chpasswd
getent passwd k2am > /dev/null && echo 'User 2am already exists. Aborting.' && exit 1 || true
groupadd 2am
useradd -d /home/klassen/2am -c k2am -m -g 2am -G cdrom,plugdev,sambashare -s /bin/bash k2am
echo 2am:2am1359=tmp& | chpasswd
getent passwd k2bm > /dev/null && echo 'User 2bm already exists. Aborting.' && exit 1 || true
groupadd 2bm
useradd -d /home/klassen/2bm -c k2bm -m -g 2bm -G cdrom,plugdev,sambashare -s /bin/bash k2bm
echo 2bm:2bm1376(wit( | chpasswd
getent passwd k2cm > /dev/null && echo 'User 2cm already exists. Aborting.' && exit 1 || true
groupadd 2cm
useradd -d /home/klassen/2cm -c k2cm -m -g 2cm -G cdrom,plugdev,sambashare -s /bin/bash k2cm
echo 2cm:2cm&275=pch= | chpasswd
getent passwd k3am > /dev/null && echo 'User 3am already exists. Aborting.' && exit 1 || true
groupadd 3am
useradd -d /home/klassen/3am -c k3am -m -g 3am -G cdrom,plugdev,sambashare -s /bin/bash k3am
echo 3am:3am-375_zoi- | chpasswd
getent passwd k3bm > /dev/null && echo 'User 3bm already exists. Aborting.' && exit 1 || true
groupadd 3bm
useradd -d /home/klassen/3bm -c k3bm -m -g 3bm -G cdrom,plugdev,sambashare -s /bin/bash k3bm
echo 3bm:3bm)361(kam. | chpasswd
getent passwd k3cm > /dev/null && echo 'User 3cm already exists. Aborting.' && exit 1 || true
groupadd 3cm
useradd -d /home/klassen/3cm -c k3cm -m -g 3cm -G cdrom,plugdev,sambashare -s /bin/bash k3cm
echo 3cm:3cm%377(prs# | chpasswd
getent passwd k4am > /dev/null && echo 'User 4am already exists. Aborting.' && exit 1 || true
groupadd 4am
useradd -d /home/klassen/4am -c k4am -m -g 4am -G cdrom,plugdev,sambashare -s /bin/bash k4am
echo 4am:4am%154%mar# | chpasswd
getent passwd k4bm > /dev/null && echo 'User 4bm already exists. Aborting.' && exit 1 || true
groupadd 4bm
useradd -d /home/klassen/4bm -c k4bm -m -g 4bm -G cdrom,plugdev,sambashare -s /bin/bash k4bm
echo 4bm:4bm_263-gri1 | chpasswd
getent passwd k4cm > /dev/null && echo 'User 4cm already exists. Aborting.' && exit 1 || true
groupadd 4cm
useradd -d /home/klassen/4cm -c k4cm -m -g 4cm -G cdrom,plugdev,sambashare -s /bin/bash k4cm
echo 4cm:4cm,279(bug. | chpasswd
getent passwd k5am > /dev/null && echo 'User 5am already exists. Aborting.' && exit 1 || true
groupadd 5am
useradd -d /home/klassen/5am -c k5am -m -g 5am -G cdrom,plugdev,sambashare -s /bin/bash k5am
echo 5am:5am#156%ple( | chpasswd
getent passwd k5bm > /dev/null && echo 'User 5bm already exists. Aborting.' && exit 1 || true
groupadd 5bm
useradd -d /home/klassen/5bm -c k5bm -m -g 5bm -G cdrom,plugdev,sambashare -s /bin/bash k5bm
echo 5bm:5bm&160_stw& | chpasswd
getent passwd k5cm > /dev/null && echo 'User 5cm already exists. Aborting.' && exit 1 || true
groupadd 5cm
useradd -d /home/klassen/5cm -c k5cm -m -g 5cm -G cdrom,plugdev,sambashare -s /bin/bash k5cm
echo 5cm:5cm,354&jen^ | chpasswd
getent passwd k1af > /dev/null && echo 'User 1af already exists. Aborting.' && exit 1 || true
groupadd 1af
useradd -d /home/klassen/1af -c k1af -m -g 1af -G cdrom,plugdev,sambashare -s /bin/bash k1af
echo 1af:1af%372_gfo. | chpasswd
getent passwd k1bf > /dev/null && echo 'User 1bf already exists. Aborting.' && exit 1 || true
groupadd 1bf
useradd -d /home/klassen/1bf -c k1bf -m -g 1bf -G cdrom,plugdev,sambashare -s /bin/bash k1bf
echo 1bf:1bf1272=vol^ | chpasswd
getent passwd k1cf > /dev/null && echo 'User 1cf already exists. Aborting.' && exit 1 || true
groupadd 1cf
useradd -d /home/klassen/1cf -c k1cf -m -g 1cf -G cdrom,plugdev,sambashare -s /bin/bash k1cf
echo 1cf:1cf.209.keg% | chpasswd
getent passwd k2af > /dev/null && echo 'User 2af already exists. Aborting.' && exit 1 || true
groupadd 2af
useradd -d /home/klassen/2af -c k2af -m -g 2af -G cdrom,plugdev,sambashare -s /bin/bash k2af
echo 2af:2af%357-bog) | chpasswd
getent passwd k2bf > /dev/null && echo 'User 2bf already exists. Aborting.' && exit 1 || true
groupadd 2bf
useradd -d /home/klassen/2bf -c k2bf -m -g 2bf -G cdrom,plugdev,sambashare -s /bin/bash k2bf
echo 2bf:2bf.219_ste( | chpasswd
getent passwd k3afi > /dev/null && echo 'User 3afi already exists. Aborting.' && exit 1 || true
groupadd 3afi
useradd -d /home/klassen/3afi -c k3afi -m -g 3afi -G cdrom,plugdev,sambashare -s /bin/bash k3afi
echo 3afi:3afi,356.hit_ | chpasswd
getent passwd k3bfn > /dev/null && echo 'User 3bfn already exists. Aborting.' && exit 1 || true
groupadd 3bfn
useradd -d /home/klassen/3bfn -c k3bfn -m -g 3bfn -G cdrom,plugdev,sambashare -s /bin/bash k3bfn
echo 3bfn:3bfn=277,baa. | chpasswd
getent passwd k4afi > /dev/null && echo 'User 4afi already exists. Aborting.' && exit 1 || true
groupadd 4afi
useradd -d /home/klassen/4afi -c k4afi -m -g 4afi -G cdrom,plugdev,sambashare -s /bin/bash k4afi
echo 4afi:4afi=275/279)opp. | chpasswd
getent passwd k4bfn > /dev/null && echo 'User 4bfn already exists. Aborting.' && exit 1 || true
groupadd 4bfn
useradd -d /home/klassen/4bfn -c k4bfn -m -g 4bfn -G cdrom,plugdev,sambashare -s /bin/bash k4bfn
echo 4bfn:4bfn&217_cer( | chpasswd
getent passwd k1ai > /dev/null && echo 'User 1ai already exists. Aborting.' && exit 1 || true
groupadd 1ai
useradd -d /home/klassen/1ai -c k1ai -m -g 1ai -G cdrom,plugdev,sambashare -s /bin/bash k1ai
echo 1ai:1ai1254=kle^ | chpasswd
getent passwd k1bi > /dev/null && echo 'User 1bi already exists. Aborting.' && exit 1 || true
groupadd 1bi
useradd -d /home/klassen/1bi -c k1bi -m -g 1bi -G cdrom,plugdev,sambashare -s /bin/bash k1bi
echo 1bi:1bi,371.hol= | chpasswd
getent passwd k1ci > /dev/null && echo 'User 1ci already exists. Aborting.' && exit 1 || true
groupadd 1ci
useradd -d /home/klassen/1ci -c k1ci -m -g 1ci -G cdrom,plugdev,sambashare -s /bin/bash k1ci
echo 1ci:1ci1265-jav^ | chpasswd
getent passwd k2ai > /dev/null && echo 'User 2ai already exists. Aborting.' && exit 1 || true
groupadd 2ai
useradd -d /home/klassen/2ai -c k2ai -m -g 2ai -G cdrom,plugdev,sambashare -s /bin/bash k2ai
echo 2ai:2ai^3781bay. | chpasswd
getent passwd k2bi > /dev/null && echo 'User 2bi already exists. Aborting.' && exit 1 || true
groupadd 2bi
useradd -d /home/klassen/2bi -c k2bi -m -g 2bi -G cdrom,plugdev,sambashare -s /bin/bash k2bi
echo 2bi:2bi#363&kus^ | chpasswd
getent passwd k2ci > /dev/null && echo 'User 2ci already exists. Aborting.' && exit 1 || true
groupadd 2ci
useradd -d /home/klassen/2ci -c k2ci -m -g 2ci -G cdrom,plugdev,sambashare -s /bin/bash k2ci
echo 2ci:2ci,271.nic# | chpasswd
getent passwd k3ai > /dev/null && echo 'User 3ai already exists. Aborting.' && exit 1 || true
groupadd 3ai
useradd -d /home/klassen/3ai -c k3ai -m -g 3ai -G cdrom,plugdev,sambashare -s /bin/bash k3ai
echo 3ai:3ai#260=buc_ | chpasswd
getent passwd k3bi > /dev/null && echo 'User 3bi already exists. Aborting.' && exit 1 || true
groupadd 3bi
useradd -d /home/klassen/3bi -c k3bi -m -g 3bi -G cdrom,plugdev,sambashare -s /bin/bash k3bi
echo 3bi:3bi=3601bsb. | chpasswd
getent passwd k3ci > /dev/null && echo 'User 3ci already exists. Aborting.' && exit 1 || true
groupadd 3ci
useradd -d /home/klassen/3ci -c k3ci -m -g 3ci -G cdrom,plugdev,sambashare -s /bin/bash k3ci
echo 3ci:3ci_225%bre- | chpasswd
getent passwd k4ai > /dev/null && echo 'User 4ai already exists. Aborting.' && exit 1 || true
groupadd 4ai
useradd -d /home/klassen/4ai -c k4ai -m -g 4ai -G cdrom,plugdev,sambashare -s /bin/bash k4ai
echo 4ai:4ai%261_daz( | chpasswd
getent passwd k4bi > /dev/null && echo 'User 4bi already exists. Aborting.' && exit 1 || true
groupadd 4bi
useradd -d /home/klassen/4bi -c k4bi -m -g 4bi -G cdrom,plugdev,sambashare -s /bin/bash k4bi
echo 4bi:4bi=257,oli( | chpasswd
getent passwd k4cn > /dev/null && echo 'User 4cn already exists. Aborting.' && exit 1 || true
groupadd 4cn
useradd -d /home/klassen/4cn -c k4cn -m -g 4cn -G cdrom,plugdev,sambashare -s /bin/bash k4cn
echo 4cn:4cn&276#sdo_ | chpasswd
getent passwd k5ax > /dev/null && echo 'User 5ax already exists. Aborting.' && exit 1 || true
groupadd 5ax
useradd -d /home/klassen/5ax -c k5ax -m -g 5ax -G cdrom,plugdev,sambashare -s /bin/bash k5ax
echo 5ax:5ax.278)fin& | chpasswd
getent passwd k5bi > /dev/null && echo 'User 5bi already exists. Aborting.' && exit 1 || true
groupadd 5bi
useradd -d /home/klassen/5bi -c k5bi -m -g 5bi -G cdrom,plugdev,sambashare -s /bin/bash k5bi
echo 5bi:5bi.256(nus& | chpasswd
getent passwd k5cn > /dev/null && echo 'User 5cn already exists. Aborting.' && exit 1 || true
groupadd 5cn
useradd -d /home/klassen/5cn -c k5cn -m -g 5cn -G cdrom,plugdev,sambashare -s /bin/bash k5cn
echo 5cn:5cn(259=slt& | chpasswd
getent passwd k1ao > /dev/null && echo 'User 1ao already exists. Aborting.' && exit 1 || true
groupadd 1ao
useradd -d /home/klassen/1ao -c k1ao -m -g 1ao -G cdrom,plugdev,sambashare -s /bin/bash k1ao
echo 1ao:1ao_2171kit. | chpasswd
