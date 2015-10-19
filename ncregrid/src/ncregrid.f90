! ******************************************************************
! ------------------------------------------------------------------
PROGRAM NCREGRID
! ------------------------------------------------------------------
! Author: Patrick Joeckel, MPICH, Mainz, June 2002
! ******************************************************************

  USE mo_f2kcli                    ! command line interface
  USE messy_ncregrid_control       ! regridding interface

  IMPLICIT NONE

  INTRINSIC :: TRIM
 
  ! FOR COMMAND LINE
  CHARACTER(LEN=256) :: EXE          ! program name
  CHARACTER(LEN=80)  :: CMD          ! argument
  INTEGER            :: NARG         ! number of arguments

  NARG = COMMAND_ARGUMENT_COUNT()    ! number of arguments
  CALL GET_COMMAND_ARGUMENT(0,EXE)   ! program name

  IF (NARG > 1) THEN 
     WRITE(*,*) 'Too many arguments !'
     CALL USAGE(TRIM(EXE)) 
     STOP
  END IF

  IF (NARG == 0) THEN 
     CALL USAGE(TRIM(EXE)) 
     STOP
  END IF

  CALL GET_COMMAND_ARGUMENT(1,CMD)  

  ! REGRIDDING ...
  RG_CTRL = RG_PROC
  RG_NML  = NML_NEXT
  DO ! endless DO loop (must be terminated with EXIT)
     CALL REGRID_CONTROL(RG_CTRL, RG_NML, RG_STATUS, TRIM(CMD))
     IF (RG_STATUS == RGSTAT_STOP) EXIT ! leave endless DO loop
  END DO
  ! END OF REGRIDDING

CONTAINS

  SUBROUTINE USAGE(EXE)
    CHARACTER (LEN=*) :: EXE
    WRITE(*,*) '-----------------------------------------'
    WRITE(*,*) 'NCREGRID Version ',NCREGRIDVERS
    WRITE(*,*) 'Author: Patrick Joeckel, MPICH, June 2002'
    WRITE(*,*) '-----------------------------------------'
    WRITE(*,*) 'Usage: '//TRIM(EXE)//' <namelist-file>'
    WRITE(*,*) '-----------------------------------------'
  END SUBROUTINE USAGE

END PROGRAM NCREGRID
! ------------------------------------------------------------------
