///////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////
// Update Dialog for Planetar of Justice                                 //
///////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////

REPLACE_TRIGGER_TEXT OHDPLANJ ~Global("OHD_planetar","OH5400",3)~ ~Global("OHD_planetar","OH5400",3) InParty("dorn")~

APPEND OHDPLANJ

  IF ~Global("OHD_planetar","OH5400",3)
  !InParty("dorn")~ THEN BEGIN s0
    SAY @100
    IF ~~ THEN REPLY @101 GOTO stepa
    IF ~~ THEN REPLY @102 GOTO stepb
    IF ~~ THEN REPLY @103 GOTO stepc
  END

  IF ~~ THEN BEGIN stepa
    SAY @104
    IF ~~ THEN GOTO stepc
  END

  IF ~~ THEN BEGIN stepb
    SAY @105
    IF ~~ THEN GOTO stepc
  END

  IF ~~ THEN BEGIN stepc
    SAY @106
    IF ~~ THEN DO ~ActionOverride("OHDPLANJ",Enemy()) SetGlobal("OHD_planetar","OH5400",4)~ EXIT
  END
END