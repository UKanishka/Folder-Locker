cls
@ECHO OFF
title Folder Locker By Uidtha
if EXIST Locker goto SELECTION
if NOT EXIST Locker goto MDLOCKER
:SELECTION
color b
echo #############################################################################
echo #    ________________Folder Lock (Beta) V.1.0_________________              #
echo #                   Developed By Uditha Kanishka                            #
echo #############################################################################
echo #                                                                           #
echo #       1.Enter 1 for lock                                                  #
echo #       2.Enter 2 unlock                                                    #
echo #       3.Enter 3 for exit                                                  #
echo #                                                                           #
echo #############################################################################
set/p "sel=>"
if %sel%==1 goto CONFIRM
if %sel%==2 goto UNLOCK
if %sel%==3 goto END
:CONFIRM
cls
color c
echo Are you sure u want to Lock the folder(Y/N)
set/p "cho=>"
if %cho%==Y goto LOCK
if %cho%==y goto LOCK
if %cho%==n goto END
if %cho%==N goto END
echo Invalid choice.
goto CONFIRM
:LOCK
attrib +h +s Locker
echo Folder locked
goto End
:UNLOCK
echo Enter password to Unlock folder
set/p "pass=>"
if NOT %pass%== passwordhear goto FAIL
attrib -h -s Locker
echo Folder Unlocked successfully
goto End
:FAIL
echo Invalid password
goto end
:MDLOCKER
md Locker
echo Locker created successfully
goto End
:End
